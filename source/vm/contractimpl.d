module godwit.contractimpl;

import godwit.hash;
import godwit.crst;
import godwit.llv.traits;

public struct TypeIDMap
{
public:
final:
    HashMap m_idMap;
    HashMap m_mtMap;
    Crst m_lock;
    TypeIDProvider m_idProvider;
    uint m_entryCount;

    mixin accessors;
}

public struct TypeIDProvider
{
public:
final:
    uint m_nextID;
    // #ifdef FAT_DISPATCH_TOKENS
    uint m_nextFatID;

    mixin accessors;
}