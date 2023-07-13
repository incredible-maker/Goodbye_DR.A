#!/bin/bash
set -e
module load crispresso2

for seq in GCGGCGATCTGGAGCAACCG CGCACCAGAACTCGTAGCAG GGCTCCAGCGACTCCAGACG CCAAGTTTACCAGCTTTACG TCAAATACCAGTGACCCAGG TACCGTCAACAACAGACCCC CCAGCGCAGAGGACATCCGA TAACCTGACACCCTTTGTCA GACAAAACTGCTAAACGATG ATGAGCAGCGTCAAACTGCG CCATTCATAAAGGACTTGGG TGGCCAGCAAGCCCTCGCGG GAGGATTGGTCATGCTCACG GCTCATCCGAGCGAGAAAAG CATCGCTCTGAATAATGAGA GTTGTGGAAACAGATAGTCA TATCGTAGTAAGTACCAATG AGAGTACATTATAGGCACCG GACACCACCTAAACGCCCAG TTATCAGCAGGAAATTTCCG CAAATGCATCAAATGCAGCA CCCCGACTCTCAGCTTACCG CTGCACGCGGACAAGAGCGT CTACGGCGACTTCGCGCCTG GTGTTGGGGAAATACCGCGC GTGTGAGGGCGTTAACACCG AGCCAGTGTCAACACGACAC TCAACGCCATGACCTACCCC TACAAGAAGAAGTACCTACG TGTTGCGGTGAATAACATAG TCCAGCATGGGCTCTCAAGA GCATGTTCTTAATCTTCACA CGTGGTGGCTCGGATCCTAG GGTCCTCGCCTTGCGCGCAG GCGGCTCGTGCACGACTGCG CGTCGCGGCGCTCGTCAACG AGGGCGCCACTACCACGGGG CGCGACACTCACGTTAGTCG ACACACACGACTTCCCCCTG GCTAACCCACCAGGAATCGG GCTGTACGGAGTCGTAGTCG AGAGGCAAACCCCTGCCAAG GTCAATGC ACT CG G A C G C GG GT AG CG A C C GC A A C AT AG GA GG TC G AT TT AC AA AC CG AG GG GT AC TC CA CC AG AA TA GT AA GG GA CA GC GT GT GG CA AC GC TG TA CA AG CT TT GA AA GA GA TG GT TC AC CG AT GT CC AC GT CG GC TG GT AC TT GT AA AT CG GG GG CA CG CT GT TC GT AA CC GC GC GG CA GC TA AG CG GG CC GG TT GA TC CT AT AA TT GA GC GA AC GG

do
  CRISPResso -r1 /wrk/jacky/fastq/origin/CRISPR_S2_L001_R1_001.fastq.gz -r2 /wrk/jacky/fastq/origin/CRISPR_S2_L001_R2_001.fastq.gz -a "$seq"
done
