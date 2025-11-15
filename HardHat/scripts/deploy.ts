import ethers from "hardhat";

async function main(){
    const StudentRecord = await ethers.getContractFactory("StudentRecord");
    const studentRecord = await StudentRecord.deploy();

    await studentRecord.deployed();
    console.log("StudentRecord deployed to:", studentRecord.address);
}

main().catch(error)=>{
    
}