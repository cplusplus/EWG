grep -v "^[A-Z]" <annex-f >temp1
grep -v "^[0-9]" <temp1 >temp2
grep -v "ISO/IEC" <temp2 >temp3
grep -v "^$" <temp3 >index
bin\section_data <index >section.data
ls -l section.data
