{ch title="Hello World" Program File id=hello_program_file

    To create and run a simple "Hello world" program, proceed as follows:
    
    {list
        {el title=Create the program file
            
            Use your preferred text editor and create a file named hello.ppl in any directory and with the following content:
            
            {insert_code file=[[examples_dir]]write_code/hello_program/hello.ppl \
                title=File hello.ppl}
            
            {note A single program file must always contain a function named {c start}. As the name suggests, this function is executed when the program is started.}   
        }

        {el title=Execute the program file
            
            Type the following command in a system terminal:
            {input
                ppl hello.ppl
            input}
            {note
                If your current working directory is different from the directory of the script file then you must specify a relative or absolute path to the script file, for example: 
                {input
                    ppl ../tests/hello.ppl
                input}
            }
            The result is written to your terminal:
            {output
                Hello world
            output}
        }
    }
}
