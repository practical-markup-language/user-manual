{ch title="Hello World" Project

    {list
        {el title=Create a new project
            
            Open a terminal window in any directory in which you want to create the project.
            
            Enter the following command:
            
            {input
                ppl create_project --id hello
            input}
            
            PPL creates a sub-directory named {c hello}. This is the project's root directory. Moreover, a number of subdirectories and files are created under {c hello}.
        }

        {el title=Write code
            
            An important file is {c se_start.ppl} which has been created in the project's subdirectory {c work/src/PPL/hello}. This file contains the entry code that will be executed when the application starts.
            
            Open file {c work/src/PPL/hello/se_start.ppl} with your preferred text editor, and change the source code so that it looks like this:

            {insert_code file=[[examples_dir]]write_code/hello_project/hello/work/src/PPL/hello/se_start.ppl \
                title = File se_start.ppl}

            Save the file.
            
        }

        {el title=Compile and build
            
            Execute the {c compile_and_build} OS script file which is located in your project’s root directory (i.e. {c compile_and_build.sh} on Linux/Unix and {c compile_and_build.bat} on Windows).
            
            Alternatively you can also execute the following two OS commands in a terminal (while being in the project’s root directory):
            
            {input
                ppl compile_project
                ppl build_project
            input}

            You can also use shortcuts for both commands and simply type:

            {input
                ppl cp
                ppl bp
            input}
        }

        {el title=Execute

            Execute the {c run} OS script file in your project’s root directory (i.e. {c run.sh} on Linux/Unix systems and {c run.bat} on Windows systems).
            
            Alternatively, you can also execute the OS command {c ppl run_project}, or simply {c ppl rp}.

            The application’s output is displayed in the terminal:
            
            {output
                Hello world
            output}
        }

        {el title=Deploy
            For instructions on how to deploy a PPL project please refer to chapter {xref node_id=deploy}.
        }
    }
} 
