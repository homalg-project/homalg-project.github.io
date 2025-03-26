LoadPackage( "FunctorCategories", false );

sed := "sed -E 's|([^/]+)/.*AddCategoricalProperty\\\( \\\[ \"([^\"]+)\", \"?([^\"]+?)\"? \\\] \\\);|[ \"\\2\", \"\\3\", \"\\1\" ],|'";
git := "git grep 'AddCategoricalProperty( ' | ";

str1 := Concatenation( "cd ~/software/pkg/CAP_project; ", git, sed );
str2 := Concatenation( "cd ~/software/pkg/CategoricalTowers; ", git, sed );

doctrines1 := EvalString( Concatenation( "[ ", ExecForHomalg( str1 ), " ]" ) );
doctrines2 := EvalString( Concatenation( "[ ", ExecForHomalg( str2 ), " ]" ) );

doctrines := Concatenation( doctrines1, doctrines2 );

sorted := ListKnownDoctrines( );
Remove( sorted, Position( sorted, "IsCapCategory" ) );

for doctrine in sorted do
    triple := First( doctrines, triple -> doctrine = triple[1] );
    if triple[1] = triple[2] then
        Print( "| `", triple[1], "` | [", triple[3], "][", triple[3], "] |\n" );
    else
        Print( "| `", triple[1], "` / `",  triple[2], "` | [", triple[3], "][", triple[3], "] |\n" );
    fi;
    
od;

Print( "| `IsTriangulatedCategory`<sup id=\"a1\">[1](#f1)</sup> | [TriangulatedCategories][TriangulatedCategories] |\n" );
