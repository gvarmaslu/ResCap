

source("ui-about.R")
source("ui-readdata.R")
source("ui-tools.R")
source("ui-help.R")


# Define UI for dataset viewer app ----
#ui <- pageWithSidebar(
shinyUI(
   ### theme
   fluidPage(theme = shinytheme("cerulean"),
   ###
    ####
    tags$head(HTML("<title>ResCap-BD</title> <link rel='icon' type='image/gif/png' href='rescap.png'>")), #WIth DB logo
    navbarPage(title = div(img(src="rescap.png", style="margin-top: -14px;", height = 50)),
    ####
   #title = "ResCap - Resistance Gene Capture Database",
   footer = includeHTML("www/footer.html"),
   #theme = shinytheme("united"),
   tabPanel("Home",
             #verbatimTextOutput("inputfl")
             ui_about()),
   tabPanel("Table Search",
            ui_readtables()),
   tabPanel("Downloads",
           #verbatimTextOutput("inputfl"))
           ui_downloadtables()),
  navbarMenu(
    "Tools",
    tabPanel("NCBI-BLAST_2.2.26",
            ui_blast()),
    tabPanel("NCBI-BLAST_2.9.0",
            ui_blast2())
  ),
  navbarMenu(
    "Help",
    tabPanel("FAQ",
           ui_FAQ()),
    tabPanel("Contact",
           #verbatimTextOutput("inputfl")
           ui_contact())
  )
)
)
)