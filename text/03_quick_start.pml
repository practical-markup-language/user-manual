{ch title=Quick Start

    After {link url=[[pml_website]]/downloads/install_PML.html text=installing} PML, proceed as follows to create a web document:
    
    {list
    
        {el
            Use your preferred text editor to create a text file named {c example.pml} with the following content:
            {code
                {doc title=First test
                    This is a {i simple} example.
                }
            code}
        }
        
        {el
            {link url=https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10/ text=Open a terminal} in the directory of file {c example.pml}.
            
            Convert this PML file into a HTML file named {c example.html} by entering the following command:
            {input
                pmlc example.pml
            input}
            
            {note
                If your {c .pml} file is not located in the current working directory of your terminal window, then you must type the absolute or relative path of the {c .pml} file. For example:
                {input
                    pmlc C:\tests\pml\example.pml
                input}
                or:
                {input
                    pmlc ..\..\tests\pml\example.pml
                input}
            }

            Here is an example of a terminal session in Windows:
            {input
                C:\tests>pmlc example.pml
                File C:\tests\example.html has been created.
                C:\tests>
            input}
        }
        
        {el
            Open file {c example.html} in your browser. The result looks like this:
            {image src=[[images_dir]]/simple_example_result.png border=yes}
        }
    }
}
