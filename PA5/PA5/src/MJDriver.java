/*
 * MJDriver.java
 *
 * usage: 
 *   java MJ [ --two-pass-interpret | --two-pass-mips ] infile
 *
 * This driver either calls a MiniJava interpreter or generates MIPS
 * code to execute the MiniJava program.
 * The default is the interpreter.
 *
 */
import java.io.FileReader;
import java.io.PrintWriter;

import mjparser.*;
import mjparser.mj;
import ast_visitors.*;
import ast.node.*;
import symtable.*;
public class MJDriver {

      private static void usage() {
          System.err.println(
            "MJ: Specify input file in program arguments/test");
      }
     
      public static void main(String args[]) 
      {
        
        if(args.length < 1)
        {         
            usage();
            System.exit(1);
        }

        // filename should be the last command line option
        String filename = args[args.length-1];

        try {
          // construct the lexer, 
          // the lexer will be the same for all of the parsers
          Yylex lexer = new Yylex(new FileReader(filename));

          // create the parser
          mj parser = new mj(lexer);
          int lastInPath = filename.lastIndexOf('/');
          parser.programName = filename.substring(lastInPath+1);
          System.out.println("Driver finds input filename: " + parser.programName);

          // and parse
         Node ast_root =(Node) parser.parse().value;
	//System.out.println("parsing is successful");

          // print ast to file
	//parser.dump_stack();
	//parser.debug_parse();
          java.io.PrintStream astout =
            new java.io.PrintStream(
                new java.io.FileOutputStream(filename + ".ast.dot"));
     ast_root.accept(new DotVisitor(new PrintWriter(astout)));
          System.out.println("Printing AST to " + filename + ".ast.dot");

   // create the symbol table
          BuildSymTable stVisitor = new BuildSymTable();
          ast_root.accept(stVisitor);
          SymTable globalST = stVisitor.getSymTable();

  java.io.PrintStream STout =
            new java.io.PrintStream(
                new java.io.FileOutputStream(filename + ".ST.dot"));
          System.out.println("Printing symbol table to " + filename + ".ST.dot");

          globalST.outputDot(STout);
    	
	  CheckTypes typeChecker= new CheckTypes(globalST);      
	  try{
	  // perform type checking
	 //System.out.println("Error before typeChecking "+ typeChecker.getError());
	  ast_root.accept(typeChecker);
          }catch(Exception e){
	//System.out.println("error is caught"+e);
	//e.printStackTrace();
		//System.out.println(e.getMessage());//print message and continue 
	     	typeChecker.setError(true);
		//System.out.println(typeChecker.getErrorMessage());

		//added for testing AVR generation	  	
	  }
          
          // generate AVR code that evaluates the program
	  if(!typeChecker.getError() && !stVisitor.getError()){ //if error is false
          java.io.PrintStream avrsout =
              new java.io.PrintStream(
                      new java.io.FileOutputStream(filename + ".s"));
          ast_root.accept(new AVRregAlloc(new PrintWriter(avrsout),globalST));
          System.out.println("Printing Atmel assembly to " + filename + ".s");
	  }else{
	     //Printing errors
	    
    	     System.out.println("Atmel assembly code will not be generated as we've Error");
	     System.out.println(typeChecker.getErrorMessage());
	  }

        } catch(exceptions.SemanticException e) {
            System.err.println("Semantic error "+e.getMessage());
            System.exit(1);
       
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(1);
        }  
      }

}