{ch title=How to Try Out Code

    The easiest way to try out code (or to write very small applications) is to create a {xref node_id=hello_program_file text=single program file} that contains all the source code.
    
    Here is an example of a program that creates a book object and writes its attributes to the OS's output device:

    {insert_code file=[[examples_dir]]write_code/book_program/book_program.ppl \
        title=File book_program.ppl}
        
    (1) Type {c book} defines a data structure (record) with 3 attributes: {c id}, {c title}, and {c best_seller}
    
    (2) Function {c create_book} creates a {c book} object and returns it.
    
    (3) As said already in a {xref node_id=hello_program_file text=previous chapter}, every program file must contain a {c start} function which executes first at program startup. In our example, a {c book} object is created and written to the OS output device.

    Executing this program with …​

    {input
        ppl book_program.ppl
    input}

    ... will write the book's attributes to the terminal:
    
    {output
        id=123
        title=How to Write Beautiful Code
        best_seller=yes
    output}
    
    If JavaFX is {link url=[[ppl_website]]/ppl/downloads/install_PPL.html#JavaFX text=installed} on your system, then you can replace the last instruction in function {c start} with
    
    {code
        object_GUI.show ( book )
        OS.console?.ask_press_Enter
    code}
    
    Now, executing this program with …​

    {input
        pplgui book_program.ppl
    input}

    ... will display the {c book} object in a new window like this:
    
    {image source=images/book_GUI.png border=yes}

}
