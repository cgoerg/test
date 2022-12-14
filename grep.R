# This script has examples for the use of the grep function

drug <- c("","Bup","Nal","Bup,Nal")
df <- data.frame(drug)

b_drug_index <- grep("Bup",df$drug) 
n_drug_index <- grep("Nal",df$drug) 

either_drug_index <- grep("Bup|Nal",df$drug) 
both_drugs_index <- grep("(?=.*Bup)(?=.*Nal)", df$drug, perl=T)

bup <- rep(0,4)  # initialize bup with zeros bla bla
nal <- rep(0,4)  # initialize nal with zeros
bup[b_drug_index] <- 1  # use index to set bup rowx to 1
dx <- bup + nal         # add indices: rows with only bup remain 1 (1+0), rows with only nal remain 2(0+2), rows with both bup and nal will be 3 (1+2)

dx

