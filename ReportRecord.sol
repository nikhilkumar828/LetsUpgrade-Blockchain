pragma solidity >=0.4.22 <0.7.0;



contract ReportRecord{
    
    string public studentName;
    address public rollNo;
    uint sub1;
    uint sub2;
    uint sub3;
    uint sub4;
    string public result;
   
    constructor (string memory name,uint iSub1,uint iSub2,uint iSub3,uint iSub4) public {
        
       studentName = name;
       rollNo = msg.sender;
       sub1 = iSub1;
       sub2 = iSub2;
       sub3 = iSub3;
       sub4 = iSub4;
       uint sum = iSub1 + iSub2 + iSub3 + iSub4;
       if(sum < 200 )
       {
            result="Can do better"; 
       }
       else
       {
           result= "Good work";
       }
    }
    
    function getReport()public view returns(string memory,address,uint,uint,uint,uint,string memory){
        
        return (studentName,rollNo,sub1,sub2,sub3,sub4,result);
   
    }
    
}
