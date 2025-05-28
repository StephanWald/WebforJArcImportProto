package com.example;

import com.webforj.App;
import com.webforj.annotation.AppTitle;
import com.webforj.annotation.InlineStyleSheet;
import com.webforj.annotation.Routify;

/**
 * A simple HelloWorld app.
 */
@Routify(packages = "com.example.views")
@AppTitle("webforJ Hello World")
@InlineStyleSheet("context://static/app.css")
public class Application extends App{
}
