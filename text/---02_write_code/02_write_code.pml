{ch title=How to Write and Execute Code id=write_code

    There are two ways to write and execute PPL code:
    
    {list
        {el title=Single program file:
            A {i PPL program file} is a single text file that can contain any number of functions and other software components, such as types, factories, services. This is convenient to try out code or to write small applications.
        }
        {el title=Project
            A {i PPL project} is composed of hundreds or thousands of source code files hierarchically organized in a directory tree. It is used to write big applications.
        }
    }
    
    The following chapters explain how to use each method.
    
    {insert file=hello_program_file.pml}
    {insert file=hello_project.pml}
    {insert file=try_out_code.pml}
{--
    {ch title=First Class Executable Program File
        Linux/Unix shebang syntax
    }
    {insert file=real_application.pml}
--}
}
