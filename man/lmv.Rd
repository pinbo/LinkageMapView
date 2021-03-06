% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lmv.R
\name{lmv}
\alias{lmv}
\title{LinkageMapView plotting function}
\usage{
lmv(mapthis, outfile, mapthese = NULL, autoconnadj = TRUE,
  bg = "transparent", cex.main = par("cex.main"),
  col.main = par("col.main"), conndf = NULL, dupnbr = FALSE,
  family = "Helvetica", fg = "black", font.main = par("font.main"),
  header = TRUE, labdist = 0.3, lcex = par("cex"), lcol = par("col"),
  lfont = par("font"), lgperrow = NULL, lgtitles = NULL, lgw = 0.25,
  lg.col = NULL, lg.lwd = par("lwd"), markerformatlist = NULL,
  maxnbrcolsfordups = 3, pdfwidth = NULL, pdfheight = NULL,
  pointsize = 12, posonleft = NULL, prtlgtitles = TRUE, qtldf = NULL,
  revthese = NULL, rcex = par("cex"), rcol = par("col"),
  rfont = par("font"), roundpos = 1, rsegcol = TRUE, ruler = FALSE,
  sectcoldf = NULL, qtlscanone = NULL, showonly = NULL,
  title = "LinkageMapView R output")
}
\arguments{
\item{mapthis}{Required, either a 'cross' object from r/qtl, a csv or txt
  file or a data frame with the following 3 columns in this order:
\enumerate{
  \item Linkage group name. This will be the title for the linkage
        group unless overridden - see lgtitles.
  \item Position - must be in numerical order ascending within
        linkage group name.
  \item Locus - marker name at this position.
}}

\item{outfile}{Required, name for the output pdf file.}

\item{mapthese}{Optional vector of linkage group names to print.
The default, NULL, will print all linkage groups in mapthis.}

\item{autoconnadj}{If TRUE (the default), locus with the same name
(homologs) on adjacent linkage groups will be connected with a line.}

\item{bg}{Background coloer for the pdf.  Default is "transparent".}

\item{cex.main}{The magnification to be used for linkage group titles.
The default is par("cex.main").}

\item{col.main}{The color to be used for linkage group titles.
Defaults to par("col.main").}

\item{conndf}{An optional dataframe containing markers to be connected
with lines (homologs).  If autoconnadj = TRUE, these lines will
appear as well as those with the same name in adjacent linkage
groups.  Required columns:
\itemize{
\item fromchr Linkage group for the line start.
\item fromlocus Locus name for the line start.
\item tochr Linkage group for the line end.
\item tolocus Locus name for the line end.
}}

\item{dupnbr}{If TRUE, only the first marker name at a position will print
with (## more) afterwards indicating the number of duplicate markers
at that position.  dupnbr should be left to the default, FALSE,
if showonly provided.}

\item{family}{Font family for all text.  Default is "Helvitica".}

\item{fg}{Foreground color for the pdf.  Default is black.}

\item{font.main}{An integer which specifies which font to use for title text.
The default is par("font.main"). 1 is plain text.  2 is bold.
3 is italic. 4 is bold italic.}

\item{header}{A boolean indicating if the input file has a header row.
Default is TRUE.}

\item{labdist}{Distance in inches from the chromosome to the position
and locus labels. The default is 0.3 inches.}

\item{lcex}{A numerical value giving the amount by which position labels
should be magnified.  The default is par("cex").
See also rcex for locus labels.}

\item{lcol}{The color for the position labels.  The default is par("col").
See also rcol for locus labels.}

\item{lfont}{An integer which specifies which font to use for the position
labels.  The default is par("font").  See also rfont for locus labels.}

\item{lgperrow}{An integer specifying how many linkage groups to plot in
one row.  As many rows as needed to plot all requested linkage
groups will be plotted.}

\item{lgtitles}{Optional vector of titles for the linkage groups.  These
will override the default, which is that the linkage group names
in the input print as titles.  This may be useful if in mapthese you
have indicated to print the same linkage group more than once for the
purpose of showing homologous markers without having lines cross.}

\item{lgw}{Width of chromosome in inches.  Default is 0.25 inches.}

\item{lg.col}{Linkage group color.  The color of the chromosomes.
The default is the background color (bg).}

\item{lg.lwd}{Linkage group linewidth. The width of the line around
the chromosome.  Defaults to par("lwd").}

\item{markerformatlist}{An optional list containing the following vectors:
\itemize{
  \item locus Required.  A vector of loci for which the following
  should be applied.
  \item col Optional.  The color for these locus labels.  This color
  will override rcol.  See also rsegcol.
  \item cex Optional.  A numerical vlue giving the amount by which
  these locus labels should be magnified.  This value will override
  rcex.
  \item font Optional. An integer which specifies which font to use
  for these locus labels. This value will override rfont.
}}

\item{maxnbrcolsfordups}{Indicates the number of columns across the page for
locus labels appearing at duplicate positions.  The default is 3.}

\item{pdfwidth}{Width of the output file in inches.  Defaults to 7.}

\item{pdfheight}{Height of the output file in inches.  Defaults to 7.}

\item{pointsize}{The default point size to be used.  Defaults to 12.}

\item{posonleft}{A vector of boolean (TRUE or FALSE) the length of the
number of linkage groups to be plotted. if FALSE, print positions on
right hand side of linkage group and locus names on left hand side
of linkage group.  Default is TRUE.}

\item{prtlgtitles}{If FALSE do not print linkage group titles.
Default is TRUE.}

\item{qtldf}{An optional data frame containing QTL information for plotting.
The data frame, if provided, must contain:
\itemize{
  \item chr Linkage group name for QTL.
  \item qtl Name (label) for QTL.
  \item so Start of outer interval. Numeric.
  \item si Start of inner interval. Numeric.
  \item ei End of inner interval. Numeric.
  \item eo End of outer interval. Numeric.
  \item col Color for QTL.
}}

\item{revthese}{Optional vector of linkage group names to reverse.  The end
position becomes position 0 and position 0 becomes the end position.}

\item{rcex}{A numerical value giving the amount by which locus labels
should be magnified.  The default is par("cex").
See also lcex for position labels.}

\item{rcol}{The color for the locus labels.  The default is par("col").
See also lcol for position labels.}

\item{rfont}{An integer which specifies which font to use for the locus
labels.  The default is par("font").
See also lfont for position labels.}

\item{roundpos}{Number of positions after the decimal point to print for
positions.  Default is 1}

\item{rsegcol}{Color of the segments across the chromosome and to the label.
TRUE, the default, indicates the color should be the
same as the label.}

\item{ruler}{A single boolean (TRUE OR FALSE).  If TRUE, a cM ruler is
drawn on the left hand side of the page and the position labels
are not printed on any linkage group.  The default is FALSE.}

\item{sectcoldf}{Optional data frame containing the following named columns
indicating sections of the chromosome to be colored:
  \itemize{
    \item chr - matches from input file or cross object
     linkage group name
    \item s - start position in cM
    \item e - end position in cM
    \item col - color for section
   }}

\item{qtlscanone}{Optional scanone dataframe from package r/qtl.  If provided,
all QTLs in the dataframe will be drawn by calculating their
start and end with the r/qtl function bayesint with defaults.}

\item{showonly}{Optional vector of marker names.  If provided, only these
marker names will be printed.}

\item{title}{Title to be passed to pdf as metadata.  This title does not
appear except in the pdf metadata.  Defaults to
"LinkageMapView R output".}
}
\description{
lmv is the main function to produce linkage group maps and has many
     parameters to customize the pdf output.
}
\examples{

## take a cross object from r/qtl and produce linkage map
## on chr 1,4,6,15

library(qtl)
data(hyper)
lmv(hyper,"hyper.pdf",mapthese=c(1,4,6,15))

## color some of the markers for emphasis

library(qtl)
data(hyper)

# make a list to pass label options
flist <- list()
locus <- c("D1Mit123","D1Mit105","D6Mit273","D15Mit56","D15Mit156")
col   <- c("red")
flist[[1]] <- list(locus=locus,col=col)
lmv(hyper,"hyperred.pdf",mapthese=c(1,4,6,15),markerformatlist=flist)

## change some of the pdf options and chromosome color
## changing title color (col.main) to same as foreground pdf color

library(qtl)
data(hyper)

lmv(hyper,"hyperlg.pdf",
mapthese=c(1,4,6,15),
bg="black",fg="white",col.main="white",
pdfheight=8,title="myhyper",lg.col="tan")

## change all label colors and fonts

library(qtl)
data(hyper)

lmv(hyper,"hypercol.pdf",mapthese=c(1,4,6,15),
lcol="blue",lfont=2,lcex=1.2,rcol="red",rfont=3,rcex=2)

## make a dataframe to pass sections of chr to col
## use a ruler instead of printing positions as labels
## only allow one column for duplicate markers at same position
## (default is 3)

library(qtl)
data(hyper)

chr = c(1, 4, 6, 15)
s = c(82,35,9.8,7.7)
e = c(94,47,21.9,13.1)
col = c("pink","blue","blue","green")
sectcoldf <-  data.frame(chr, s, e, col,stringsAsFactors = FALSE)

lmv(hyper,"hyperruler.pdf",mapthese=c(1,4,6,15),
ruler=TRUE,maxnbrcolsfordups = 1, sectcoldf=sectcoldf)

## plot qtls also out of a r/qtl scanone object
## plot marker names on left (instead of right) of chr 4 and 7

library(qtl)
data(hyper)

# create scanone df for testing
hyper <-
 calc.genoprob(hyper,
               step = 2.0,
               map.function = "haldane",
               stepwidth = "fixed")
hyper.scanone <- scanone(hyper)

lmv(hyper,
   "testrqtlhyper2.pdf",mapthese=c(1,4,6,7,15),
   qtlscanone = hyper.scanone,
   posonleft = c(TRUE,FALSE,TRUE,FALSE,TRUE))

## plot a carrot comparative linkage map
## kindly provided by Massimo Iorizzo:
## Cavagnaro et al. BMC Genomics 2014, 15:1118

# make a df to pass qtl info
qtldf <- data.frame(
  chr = character(),
  qtl = character(),
  so = numeric(),
  si = numeric(),
  ei = numeric(),
  eo = numeric(),
  col = character(),
  stringsAsFactors = FALSE
)
qtldf <- rbind(qtldf,
               data.frame(
                 chr = "70349LG3",
                 qtl = "RTPE-Q1",
                 so = 36.6,
                 si = 37,
                 ei = 37,
                 eo = 38,
                 col="red"
               ))
# make a list to pass label options
flist <- list()
locus <- c("BSSR-094", "K0149", "K0627", "K2161", "ESSR-087", "ESSR-057")
font  <- c(2)   #bold
flist[[1]] <- list(locus = locus, font = font)
locus <- c("F3H", "FLS1")
font  <- c(4)   #bold italic
flist[[2]] <- list(locus = locus, font = font)
locus <- c("P3", "P1", "Raa1")
font  <- c(3)   #italic
col <- c("red")
flist[[3]] <- list(locus = locus, font = font, col = col)
filename <- system.file("extdata", "carrot.csv", package="LinkageMapView")
lmv(
  mapthis = filename,
  outfile = "carrot.pdf",
  ruler = TRUE,
  lgtitle = c("2170", "70349", "10117"),
  maxnbrcolsfordups = 1,
  markerformatlist = flist,
  lg.col = "lightblue1",
  pdfwidth =10,
  revthese = c("70349LG3"),
  qtldf=qtldf
)
}

