Documents Audit for Azure Blockchain Workbench
=============================================================================

Overview  
----------

"With blockchain, you can imagine a world in which documents are embedded in digital code and stored in transparent, shared databases, where they’re protected from deletion, tampering and revision. In this world every agreement, every process, every task, and every payment would have a digital record and signature that could be identified, validated, stored, and shared. Intermediaries like lawyers, brokers and institutions might no longer be necessary. Individuals, organizations, and machines would freely transact and interact with one another with little friction. This is the immense potential of blockchain.

The potential application of content decentralization and distribution is enormous. With a single, immutable and verifiable record store, people will own their digital identity and records—think of identity or residence documents, medical records, educational or professional certificates and licenses. All these documents and their metadata can be issued on the blockchain and be digitally signed. No more fake certifications, no more degree mills, no more “photoshopped” papers.

Students, for example, may apply for further study, a job, or immigration to another country; and in the process may be required to prove their level of study or knowledge of language to attend university. Entities like recruiters, employers, governments and universities can verify the student’s credentials without relying on central authorities—in just minutes, and with no other intermediaries." - [Stefano Tempesta](https://docs.microsoft.com/en-us%5Carchive%5Cmsdn-magazine%5Cauthors%5CStefano_Tempesta)

Application Roles 
------------------
| Name                   | Description                                       |
|------------------------|---------------------------------------------------|
| Client | Issued and sign the document        |
| Auditor           | Verify that the document exists and is authentic and not counterfeited. |
| Observer               | The individual or organization monitoring |

States Signed Process
-------

| Name                   | Description                                       |
|------------------------|---------------------------------------------------|
|Issued ||
|Stored ||
|Content Hash and Metadata || 
|Smart Contract Address||

States Verification Process
-------

| Name                   | Description                                       |
|------------------------|---------------------------------------------------|
|Retrieve Certificate ||
|On Chain Content Hash and Metadata ||
|Verifies || 
|Smart Contract Address||

Workflow Details
----------------

![state diagram for the workflow](media/73ebae42a69347a7edb762d0f583724a.png)

The following state transition diagram articulates the possible flows, and the
various transition functions at each state. Each user is only allowed to take
certain actions depending on the application role. Instance roles indicate that
only the user with the application role assigned to the specific contract is
able to take actions on the contract. 
