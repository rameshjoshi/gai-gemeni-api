CREATE TABLE Owners (
     OwnerID STRING(36) NOT NULL, 
     OwnerName STRING(MAX) NOT NULL
) PRIMARY KEY (OwnerID);

CREATE TABLE Pets (
    OwnerID STRING(36) NOT NULL, 
    PetID STRING(MAX) NOT NULL,     
    PetType STRING(MAX) NOT NULL,
    PetName STRING(MAX) NOT NULL,
    Breed STRING(MAX) NOT NULL,
) PRIMARY KEY (OwnerID,PetID),
INTERLEAVE IN PARENT Owners ON DELETE CASCADE