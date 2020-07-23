package examples.produits;

import com.intuit.karate.junit5.Karate;

class ProduitsRunner {
    
    @Karate.Test
    Karate testProduits() {
        return Karate.run("produits").relativeTo(getClass());
    }    

}
