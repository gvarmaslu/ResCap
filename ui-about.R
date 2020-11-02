

ui_about <- function() {
  fluidPage( theme = shinytheme("spacelab"),
    h3("ResCap DataBase"),
    helpText("Resistance Gene Capture data base (ResCap) contains predicted R-Gene family data-sets, These were generated using Support Vector Machine (SVM) classifier"),
    h4("Quick Search"),
    # Application title
    sidebarPanel(
      #selectInput("search_base", "Select search type:", c('ClassID', "SpeciesName", 'GeneIDs','GeneName'), selected = "GeneIDs", width="300px"),
      selectInput("search_base3", "Select by Gene Name:", c('AP2','ARF','B3','BBR-BPC','BES1','C2H2','C3H','CAMTA','CO-like','CPP','DBB','Dof','E2F-DP','EIL','ERF','FAR1','GATA','GRAS','GRF','GeBP','HB-other','HD-ZIP','HSF','LBD','LSD','M-type','MIKC','MYB','MYB_related','NAC','NF-YA','NF-YB','NF-YC','Nin-like','RAV','S1Fa-like','SAP','SBP','SRS','TCP','Tffamily','TriHelix','WRKY','YABBY','ZF-HD','bHLH','bZIP','NONE'), selected = "AP2"),
      selectInput("search_base1", "Select by R-Gene Class:", c('CNL','TNL','RLP','RLK','NONE'), selected = "CNL"),
      selectInput("search_base4", "Select by Tissue Type:", c('Crown','Flower','Leaf','Root','Seed','Stem','NONE'), selected = "Leaf"),
      selectInput("search_base2", "Select by Species Name:", c('Triticum aestivum (Wheat)', "Solanum tuberosum (Potato)", 'Arabidopsis thaliana','Nicotiana benthamiana','NONE'), selected = "Wheat")),
    mainPanel(
      tabsetPanel(
        ############
        ## SEARCH geneID TAB1
        ############
        tabPanel("Annotation Search",
                 textAreaInput("TextAreaData", "Enter your ID(s) with comma separated list",height = "300px",width = "600px"),
                 actionButton("search1","Search")
        )
      )
    )
  )
}


