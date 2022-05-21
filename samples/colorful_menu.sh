#Color variables
green='\e[32m'
blue='\e[34m'
purple_background='\033[45m'
clear='\e[0m'

#Color functions
ColorGreen(){
    echo -ne $green$1$clear
}
ColorBlue(){
    echo -ne $blue$1$clear
}
BackgroundPurple(){
    echo -ne $purple_background$1$clear
}

#Test
echo -ne $(ColorBlue 'Some text here')
echo -ne $(BackgroundPurple 'Test for background')