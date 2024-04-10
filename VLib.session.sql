CREATE TABLE users (
    id int primary key auto_increment,
    username varchar(255) not null unique,
    pw varchar(30) not null,
    email varchar(255) not null unique,
    firstName varchar(255) not null,
    lastName varchar(255) not null,
    middleInit varchar(2) not null
);
--@block
CREATE TABLE rspapers (
    id int primary key auto_increment,
    title varchar(255) not null unique,
    abstract text,
    imgref text,
    viewCount int
);
--@block
SELECT *
FROM users;
--@block
TRUNCATE TABLE users;
--@block
UPDATE rspapers
SET viewCount = 0,
    imgref = '';
--@block
INSERT INTO rspapers (title, abstract)
VALUES (
        'Assisting library users through VLib - Virtual Library',
        'No Abstract'
    ),
    (
        'J.A.D.E - Jeepney Assistant Driver Electronic',
        'No Abstract'
    ),
    (
        'Anti-Bacterial Activity of Water Hyacinth Leaf Extract-Stabilized Silver Nanoparticles',
        'Water pollution caused by the spread of unwanted water hyacinth is a problem of the Philippines. Water hyacinth (Eichhornia Crassipes) is very abundant in the Philippines. Plant mediated biosynthesis of silver nanoparticles is proven to be eco-friendly and cheap. Silver nanoparticles exhibit antibacterial characteristics. The study showed that biosynthesized silver nanoparticles from water hyacinth leaf extract was due to the extracts phytochemicals that serves as reducing and capping agent-to-silver ions to make them silver nanoparticles. After color change was observed during the water bath method in synthesis that indicates silver nanoparticles, UV-Visible Spectroscopy confirmed the presence of silver nanoparticles, Particle Size Analyzer via Dynamic Light Scattering showed the size distribution, and the Fourier Transform Infrared Spectroscopy confirmed the presence of the said phytochemicals. Cultured bacteria, Escherichia coil and Staphylococcus aureus, together with the silver nanoparticles solution undergo antibacterial assay through agar well diffusion method. The silver nanoparticles reduced the growth of both bacteria with zone of inhibition of 15.333 mm ± 0.577 mm and 15.667 mm ± 0.577 mm respectively. The antimicrobial activity of the biosynthesized silver nanoparticles is more significant than that of water hyacinth leaf extract'
    ),
    (
        'Crude Extract from Waste Crab (Scylla Serrata) Shells as a Constituent to Textile Paint',
        'Astaxanthin found in crab shells is the component responsible for its orange color. Naturally, crab shells are gray or brown but under different conditions like heating, the orange color becomes evident. This pigment can stain fabrics making it a possible constituent in making organic textile paints. The collected waste crab shells were pulverized and were soaked in 95% ethyl alcohol for 6 days, The crude extract was added to the paint medium and adhesive to form the textile paint. There were six set- ups produced; with varying ratio in the amount of paint medium, crude extract and adhesive. These six set-ups were applied to cheesecloth and were rigorously observed. The textile paint resulted to adhering to the cheesecloth; but after washing, the orange color faded. This is true for all the six set- ups with varying amounts in paint medium, crude extract and adhesive.'
    ),
    (
        'Incorporating Cymbopogon and Ocimum Basilicum Extracts in Creating Anti-Microbial Coating for Cotton Cloth',
        'Through antimicrobial textile coatings, it is possible to lessen the spread and development of microbes that can possibly grow in a cloth. Antimicrobial coatings undergo a process wherein they utilize the use of chemical substances to prevent the spread of the disease-causing microorganism. However, their safety for usage is in question as they contain biocidal that are innately harmful to humans, animals, and the environment. Thus, this research suggests the utilization of Cymbopogon (lemongrass) and Ocimum basilicum (basil) extracts, incorporating their antimicrobial properties into the antimicrobial coating. Upon microencapsulation process, a urea-formaldehyde polymer was employed and proved to be a successful choice in transferring the extracts onto cotton cloth — adhering the antimicrobial properties along with them. Furthermore, from all the tests conducted and acquired results, the extracts constantly acquired comparable inhibitory zones of 10 mm on average. With these, the ability of the two plants together to significantly be able to suppress microbial growth even in favorable environments is confirmed.'
    ),
    (
        'PCSHS EduLibrary: Digital Catalog Website for Students and Teachers of Pasig City Science High School',
        'The COVID-19 pandemic has highlighted the important component of teaching and learning in recent times.. As technology replaces conventional methods of information science, libraries must undergo significant changes. Pasig City Science High School continues to face numerous challenges in the ever-changing digital world. This article presents a prototype digital catalog library that alleviated students and teachers concerns about physical distancing, easy online access, and disorganization of library content, which remains a prevalent issue inside the school library. These concerns were addressed with the creation of the digital catalog library, with only minor errors occurring. Alter using the prototype website, participants completed survey questionnaires to determine whether or not specific features of the website, such as user interface, accessibility, and functionality, were satisfactory. With a 5% significance level and by employing the chi-square and the likert scale to assess user feedback, it was concluded that the effectiveness of the website was extremely efficient and user-friendly. '
    ),
    (
        'Storage Life Extension of Tomato (Solanum Lycopersium) and Mango (Magnifera Indica) using UV-C Radiation Treatment',
        'Ultraviolet (UV)-C radiation can elicit favourable reactions in biological systems especially in fruits and vegetables. This study was conducted to assess the effect of UV-C post-harvest treatment on the nutritional and antioxidant contents of tomato and mango. The samples were irradiated with UV-C, and then subjected to nutritional and antioxidant analysis to determine the proximate composition, mineral micronutrients, ascorbic acid, total flavonoid and total phenolics using standard methods. The result showed that post harvest treatment with UV-C radiation has varying effects on the nutritional contents and antioxidant activity of tomato and mango. Total flavonoid and total phenolics were significantly increased (p &lt; 0.05) while there was a reduction in the values of ascorbic acid. This study provides evidence that the new approach of post-harvest treatment with UV radiation can enhance some health - promoting compounds of mango and tomato for the benefit of consumers.'
    ),
    (
        'The Utilization of Paper Waste Charcoal in a Steam Powered Electric Generator',
        ''
    ),
    (
        'The Effectiveness of Foliar Applications of Kappaphycus Alvarezii (Guso) Crude Solution to the Growth of Allium Cepa (Onion)',
        'Kappapychus alvarezil or commonly known as guso is a readily available algae in the Philippines, It has properties that can help a plant grow faster. This study will help to determine the effectiveness of the Kappapychus alvarezii crude solution to the Allium cepa (onion) through foliar application. The guso was first cleaned properly then blended using a portable blender. After blending, the algae were filtered out using cheesecloth to furthermore extract it. Once the extraction was finished, the extract was placed in 4 mason jars with the following concentrations: 5%, 10%, 15%, and 20%. The jars were kept in room temperature to ferment for 5 weeks. Onion seeds were planted as the researchers waited for the fermentation to finish. After the onions sprouted its first leaves, the plants were subjected to the foliar application of the crude solution. The researchers then observed the growth of the onions subjected to the foliar application and the onions that were not subjected to the foliar application'
    ),
    (
        'Assessing the Anti-Mitotic Property of the ethanolic crude extract of Mimosa Pudica using Allium Cepa Assay',
        'Cancer is widely considered the most deadly disease to impact our world. According to WHO reports, as of 2018, the leading cause of death in cancer with a global estimate of around 9.6 million and one out of every six cases of death is due to cancer worldwide. (Rajput, 2021). A key quirk of cancer is the rampant reproduction of abnormal cells that affects tissues and organs. The transformed cells will reproduce at a terrifying rate and cause a tumour to form. The disease will not be cured until every single cancer cell has been removed from the host, even one cancer cell can divide and grow into new tumours. The rapid reproduction of cancer cells is what makes cancer such a deadly and nigh incurable disease. Many researches have been made in hopes of finding a cure for cancer. Targeting the cells at their most vulnerable state during mitosis has been a main point of many studies which aim to find a cure. As cancer revolves around cell deregulation, it has been discovered that antimitotic therapies are effective against the reproduction of  abnormal cells. Despite the robust rate of discovery and the development of mitosis-selective inhibitors, the unpredictable complexities of the human bodys response to these drugs still herald the biggest challenge towards clinical success (Chan, 2012). The researchers believe that the key to a cure for cancer lies in stopping the transformed cell from entering the phase of mitosis. The antimitotic properties of plants provide a crucial role in this endeavor. This study proposes the viability of using the selected plant from the native regions of the Philippines as a producer of antimitotic solutions. The researchers aim to create an extract of the antimitotic elements of the selected plant. The crude extract will then be subjected to initial testing to verify if its safe to be consumed by a biological specimen. If the extract is safe for consumption, we will then test it on an onion peel to confirm its effects on the reproduction of cells.'
    ),
    (
        'Metal Cleaning and Rust Removal Machinery using Electrolysis and Ultrasonic Waves',
        'No Abstract'
    );