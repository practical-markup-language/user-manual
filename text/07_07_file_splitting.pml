{ch title=File Splitting

    If you create a big document, it is useful to split it up into several files (instead of having one big file that contains all the text). For example, each chapter could be defined in a separate {c pml} file.
    
    The syntax to insert a {c pml} file at the current location is:
    
    {code highlighter=none
        {insert file = file_path} 
    code}
    
    {c file_path} can be an absolute or relative path. In case of a relative path, it is relative to the directory of the {c pml} file in which the {c insert} is defined.
    
    {b Example}
    
    Suppose we create a PML document composed of two chapters. We want each chapter to be defined in its own file, in sub-directory {c chapters} (relative to the main document).
    
    {list
        {el title = PML code:
    
            We create file {c chapters/chapter_1.pml} that looks like this:
            {code highlighter=none
                {ch title = Chapter 1
                    blah blah blah
                }
            code}
        
            We also have file {c chapters/chapter_2.pml} with this content:
            {code highlighter=none
                {ch title = Chapter 2
                    blah blah blah
                }
            code}
            
            The main file {c book.pml} is defined like this:
        
            {code highlighter=none
                {doc title = Book
                    {insert file=chapters/chapter_1.pml}
                    {insert file=chapters/chapter_2.pml}
                }
            code}
        }

        {el title = Result:
            {image src=images/insert_example.png}
        }
    }
    
}
