package com.example.views;

import com.example.ArcScannerIF;
import com.webforj.App;
import com.webforj.Environment;
import com.webforj.component.Composite;
import com.webforj.component.Theme;
import com.webforj.component.button.Button;
import com.webforj.component.button.event.ButtonClickEvent;
import com.webforj.component.field.TextArea;
import com.webforj.component.field.TextField;
import com.webforj.component.layout.flexlayout.FlexDirection;
import com.webforj.component.layout.flexlayout.FlexLayout;
import com.webforj.component.toast.Toast;
import com.webforj.router.annotation.Route;
import java.io.File;
import java.util.Map;
import java.util.Set;

/**
 * A simple HelloWorld view.
 */
@Route("/")
public class ArcReaderView extends Composite<FlexLayout> {

  private FlexLayout self = getBoundComponent();
  private TextField filepath = new TextField("ARC file path:","/Users/beff/ArcReaderProto/samplefiles/carmain.arc");
  private Button btn = new Button("Read Data");
  private TextArea output = new TextArea("Output:");

  public ArcReaderView(){
    self.setDirection(FlexDirection.COLUMN);
    self.setMaxWidth(300);
    self.setStyle("margin", "1em auto");

    btn.addClickListener(this::analyzeArcFile);


    output.setWidth("500px");
    output.setHeight("400px");
    self.add(filepath, btn, output);
  }

  private void analyzeArcFile(ButtonClickEvent buttonClickEvent) {

    final String filepathText = filepath.getText();
    if (!new File(filepathText).exists()){
      Toast.show("File not found", Theme.DANGER);
      return;
    }

    App.busy("Please wait while scanning file...");
    String data = "Windows:\n";

    ArcScannerIF scanner = (ArcScannerIF) Environment.getCurrent().getBridge().createInstance("::!!bbj/arcscanner.bbj::ArcScanner");

    Map winlist = scanner.getWindows(filepathText);

    Set<String> wins = winlist.keySet();
    for (String win : wins){
      data+= "Window: "+win+" "+winlist.get(win)+"\n";
      Map controllist = scanner.getControls(filepathText,win);
      data+= "Controls:\n";
      data+=controllist.toString();
      data+="\n\n";
    }
    output.setText(data);
    App.busy(false);

  }
}
