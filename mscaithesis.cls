% Own custom sub-classing of book
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mscaithesis}

\LoadClass[10pt]{book}

\RequirePackage[paper=a4paper,
                top=2cm,
                bottom=2cm,
                left=1.5cm,
                right=1cm]{geometry}

\RequirePackage[colorlinks=true, citecolor=blue]{hyperref}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{changepage}

% Same fonts as acmart/master information studies
\RequirePackage[T1]{fontenc}
\RequirePackage[tt=false, type1=true]{libertine}
\RequirePackage[varqu]{zi4}
% \RequirePackage[libertine]{newtxmath}


% Custom chapter head
\def\thickhrule{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}
\def\position{\centering}
%% Note the difference between the commands the one is
%% make and the other one is makes
%% Ref to /usr/share/texmf-dist/tex/latex/base/book.cls
\renewcommand{\@makechapterhead}[1]{
        \vspace*{10\p@}
        {
                \parindent \z@ \position \reset@font
                \ifnum \c@secnumdepth >\m@ne
                    \if@mainmatter
                        {\color{black}\Large \scshape \@chapapp{ \thechapter} }%  % Chapter XXXX
                        \par\nobreak%
                        \vspace*{10\p@}%
                    \fi
                \fi
                \interlinepenalty\@M%
                % \thickhrule
                \par\nobreak%
                \vspace*{2\p@}%
                {\LARGE \bfseries #1\par\nobreak}%
                \par\nobreak%
                \vspace*{2\p@}%
                % \thickhrule
                \vskip 20\p@%
                \vskip 0\p@%
        }
}

%% This uses makes
\def\@makeschapterhead#1{%
        \vspace*{10\p@}%
        {
                \parindent \z@ \position \reset@font
                {\large \scshape \vphantom{\thechapter}}
                \par\nobreak
                \vspace*{10\p@}
                \interlinepenalty\@M
                % \thickhrule
                \par\nobreak
                \vspace*{2\p@}
                {\LARGE \bfseries #1\par\nobreak}
                \par\nobreak
                \vspace*{2\p@}
                % \thickhrule
                \vskip 20\p@
        }
}

\renewcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \@mkboth{\listfigurename}%
              {\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    \addcontentsline{toc}{chapter}{List of Figures}%
}
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \@mkboth{%
          \listtablename}%
         {\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    \addcontentsline{toc}{chapter}{List of Tables}%
}
