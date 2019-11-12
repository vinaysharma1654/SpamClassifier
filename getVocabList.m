function vocabList = getVocabList()
%GETVOCABLIST reads the fixed vocabulary list in vocab.txt and returns a
%cell array of the words
%   vocabList = GETVOCABLIST() reads the fixed vocabulary list in vocab.txt 
%   and returns a cell array of the words in vocabList.

%% Read the fixed vocabulary list
fid = fopen('vocab.txt');

% Store all dictionary words in cell array vocab{}
n = 1899;  
vocabList = cell(n, 1);
for i = 1:n
    fscanf(fid, '%d', 1);
    vocabList{i} = fscanf(fid, '%s', 1);
end
fclose(fid);

end
