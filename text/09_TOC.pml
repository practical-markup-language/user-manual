{ch title=Table of Contents

    By default, a table of contents (TOC) is created on the left side of the HTML page, as shown {xref node_id=simple_document_example text=before}.
    
    The TOC is automatically created based on the chapters defined in the document.
    As chapters can be nested, the TOC results in a tree, which the user can expand or collapse.
    When the document is first displayed, all TOC chapters beyond level 1 are collapsed.
    Only chapters of level 1 are displayed. The user can then expand chapters and sub-chapters, and click on a chapter's title to see its content. 
    
    Alternatively, the TOC can be displayed on top of the document (after the document header), or it can be disabled.
    This is done by setting attribute {c TOC_position} of the {c document} node to {c top} or {c none}.
    For example, to display the TOC on top of the document, we would write:
    
    {code
        {doc title = Example \
            TOC_position = top
            ...
        }
    code}
}
