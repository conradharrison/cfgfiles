# 0	Reset / Normal	all attributes off
# 1	Bold or increased intensity	
# 2	Faint (decreased intensity)	Not widely supported.
# 3	Italic	Not widely supported. Sometimes treated as inverse.
# 4	Underline	
# 5	Slow Blink	less than 150 per minute
# 6	Rapid Blink	MS-DOS ANSI.SYS; 150+ per minute; not widely supported
# 7	[[reverse video]]	swap foreground and background colors
# 8	Conceal	Not widely supported.
# 9	Crossed-out	Characters legible, but marked for deletion. Not widely supported.
# 10	Primary(default) font	
# 11–19	Alternate font	Select alternate font n-10
# 20	Fraktur	hardly ever supported
# 21	Bold off or Double Underline	Bold off not widely supported; double underline hardly ever supported.
# 22	Normal color or intensity	Neither bold nor faint
# 23	Not italic, not Fraktur	
# 24	Underline off	Not singly or doubly underlined
# 25	Blink off	
# 27	Inverse off	
# 28	Reveal	conceal off
# 29	Not crossed out	
# 30–37	Set foreground color	See color table below
# 38	Set foreground color	Next arguments are 5;<n> or 2;<r>;<g>;<b>, see below
# 39	Default foreground color	implementation defined (according to standard)
# 40–47	Set background color	See color table below
# 48	Set background color	Next arguments are 5;<n> or 2;<r>;<g>;<b>, see below
# 49	Default background color	implementation defined (according to standard)
# 51	Framed	
# 52	Encircled	
# 53	Overlined	
# 54	Not framed or encircled	
# 55	Not overlined	
# 60	ideogram underline	hardly ever supported
# 61	ideogram double underline	hardly ever supported
# 62	ideogram overline	hardly ever supported
# 63	ideogram double overline	hardly ever supported
# 64	ideogram stress marking	hardly ever supported
# 65	ideogram attributes off	reset the effects of all of 60-64
# 90–97	Set bright foreground color	aixterm (not in standard)
# 100–107	Set bright background color	aixterm (not in standard)

# default
reset       = "0"
#text effects
bold        = "1"
boldoff     = "21"
light       = "2"
lightoff    = "22"
normal      = "22"
italic      = "3"
italicoff   = "23"
underline   = "4"
underlineoff= "24"
slowblink   = "5"
fastblink   = "6"
blinkoff    = "25"
reverse     = "7"
reverseoff  = "27"
conceal     = "8"
reveal      = "28"
strike      = "9"
strikeoff   = "29"
frame       = "51"
frameoff    = "54"
circle      = "52"
circleoff   = "54"
overline    = "53"
overlineoff = "55"
# colors
color4      = lambda c: {"black":30, "red":31, "green":32, "yellow":33, "blue":34, "magenta":35, "cyan":36, "white":37}[c]
fgcolor4    = lambda c: str(color4(c))
bgcolor4    = lambda c: str(color4(c) + 10)
fgcolorb4   = lambda c: str(color4(c) + 60)
bgcolorb4   = lambda c: str(color4(c) + 10 + 60)
fgcolor256  = lambda c: "38;5;" + str(c)
bgcolor256  = lambda c: "48;5;" + str(c)
fgcolorRGB  = lambda r,g,b: "38;2;" + "{};{};{}".format(r, g, b)
bgcolorRGB  = lambda r,g,b: "48;2;" + "{};{};{}".format(r, g, b)
fgdefault   = "39"
bgdefault   = "49"

# put it all together
def xtext(*args):
    return "\033[" + ";".join(args) + "m"

def example():
    print(xtext(underline) + "underlined text" + xtext(reset))
    print(xtext(overline, bold) + "overlined bold text" + xtext(overlineoff) + " -> no overline, bold only" + xtext(reset))
    print(xtext(fgcolorb4("green"), italic) + "green italic" + xtext(reset))
    print(xtext(fgcolor256(15), bgcolor256(21), strike) + "white on blue strike" + xtext(reset))
    print(xtext(fgcolorRGB(250,120,100)) + "some RGB" + xtext(reset))

if __name__ == "__main__":
    example()
