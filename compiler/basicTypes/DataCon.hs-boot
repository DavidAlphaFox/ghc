module DataCon where
import Name( Name, NamedThing )
import {-# SOURCE #-} TyCon( TyCon )
import Unique ( Uniquable )
import Outputable ( Outputable, OutputableBndr )

data DataCon
data DataConRep
dataConName      :: DataCon -> Name
dataConTyCon     :: DataCon -> TyCon
isVanillaDataCon :: DataCon -> Bool

instance Eq DataCon
instance Ord DataCon
instance Uniquable DataCon
instance NamedThing DataCon
instance Outputable DataCon
instance OutputableBndr DataCon
