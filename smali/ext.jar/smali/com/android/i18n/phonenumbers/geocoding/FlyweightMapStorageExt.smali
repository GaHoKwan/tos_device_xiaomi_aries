.class final Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;
.super Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
.source "FlyweightMapStorageExt.java"


# static fields
.field private static final INT_NUM_BYTES:I = 0x4

.field private static final SHORT_NUM_BYTES:I = 0x2


# instance fields
.field private descIndexSizeInBytes:I

.field private descriptionPool:[Ljava/lang/String;

.field private numberDescriptionIndexes:Ljava/nio/ByteBuffer;

.field private prefixSizeInBytes:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;-><init>()V

    return-void
.end method

.method private createDescriptionPool(Ljava/util/SortedSet;Ljava/util/SortedMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "descriptionsSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .local p2, "areaCodeMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descriptionPool:[Ljava/lang/String;

    .line 123
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descriptionPool:[Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numOfEntries:I

    if-ge v1, v6, :cond_0

    .line 128
    iget v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descIndexSizeInBytes:I

    add-int/2addr v6, v7

    mul-int v3, v1, v6

    .line 129
    .local v3, "offset":I
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numberDescriptionIndexes:Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    invoke-direct {p0, v6, v7, v3}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->readWordFromBufferOffset(Ljava/nio/ByteBuffer;II)I

    move-result v5

    .line 131
    .local v5, "prefix":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    .local v0, "description":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descriptionPool:[Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 133
    .local v4, "positionInDescriptionPool":I
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numberDescriptionIndexes:Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descIndexSizeInBytes:I

    iget v8, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    add-int/2addr v8, v3

    invoke-static {v6, v7, v8, v4}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->storeWordInBufferOffset(Ljava/nio/ByteBuffer;III)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "description":Ljava/lang/String;
    .end local v3    # "offset":I
    .end local v4    # "positionInDescriptionPool":I
    .end local v5    # "prefix":I
    :cond_0
    return-void
.end method

.method private static getOptimalNumberOfBytesForValue(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 217
    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private readEntries(Ljava/io/ObjectInput;)V
    .locals 8
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    iput v5, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numOfEntries:I

    .line 173
    iget v5, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numOfEntries:I

    iget v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descIndexSizeInBytes:I

    add-int/2addr v6, v7

    mul-int v4, v5, v6

    .line 174
    .local v4, "total":I
    const/16 v3, 0x400

    .line 175
    .local v3, "readBufferSize":I
    new-array v0, v4, [B

    .line 176
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 177
    .local v1, "iRead":I
    const/4 v2, 0x0

    .line 179
    .local v2, "offset":I
    :cond_0
    add-int/lit16 v5, v2, 0x400

    if-ge v5, v4, :cond_2

    const/16 v5, 0x400

    :goto_0
    invoke-interface {p1, v0, v2, v5}, Ljava/io/ObjectInput;->read([BII)I

    move-result v1

    .line 181
    add-int/2addr v2, v1

    .line 182
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    if-lt v2, v4, :cond_0

    .line 183
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numberDescriptionIndexes:Ljava/nio/ByteBuffer;

    .line 185
    return-void

    .line 179
    :cond_2
    sub-int v5, v4, v2

    goto :goto_0
.end method

.method private static readWordFromBuffer(Ljava/nio/ByteBuffer;II)I
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "wordSize"    # I
    .param p2, "index"    # I

    .prologue
    .line 231
    mul-int v0, p2, p1

    .line 232
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method private readWordFromBufferOffset(Ljava/nio/ByteBuffer;II)I
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "wordSize"    # I
    .param p3, "offset"    # I

    .prologue
    .line 64
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method private static storeWordInBuffer(Ljava/nio/ByteBuffer;III)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "wordSize"    # I
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 247
    mul-int v0, p2, p1

    .line 248
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 249
    int-to-short v1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, v0, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static storeWordInBufferOffset(Ljava/nio/ByteBuffer;III)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "wordSize"    # I
    .param p2, "offset"    # I
    .param p3, "value"    # I

    .prologue
    .line 56
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 57
    int-to-short v0, p3

    invoke-virtual {p0, p2, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, p2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 82
    iget v2, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    iget v3, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descIndexSizeInBytes:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    add-int v1, v2, v3

    .line 84
    .local v1, "offset":I
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numberDescriptionIndexes:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descIndexSizeInBytes:I

    invoke-direct {p0, v2, v3, v1}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->readWordFromBufferOffset(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 87
    .local v0, "indexInDescriptionPool":I
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descriptionPool:[Ljava/lang/String;

    aget-object v2, v2, v0

    return-object v2
.end method

.method public getPrefix(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 70
    iget v1, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    iget v2, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descIndexSizeInBytes:I

    add-int/2addr v1, v2

    mul-int v0, p1, v1

    .line 71
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numberDescriptionIndexes:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->readWordFromBufferOffset(Ljava/nio/ByteBuffer;II)I

    move-result v1

    return v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    .line 144
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descIndexSizeInBytes:I

    .line 147
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 148
    .local v3, "sizeOfLengths":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->clear()V

    .line 149
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 150
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 156
    .local v1, "descriptionPoolSize":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descriptionPool:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descriptionPool:[Ljava/lang/String;

    array-length v4, v4

    if-ge v4, v1, :cond_2

    .line 157
    :cond_1
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descriptionPool:[Ljava/lang/String;

    .line 159
    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 160
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "description":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descriptionPool:[Ljava/lang/String;

    aput-object v0, v4, v2

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 163
    .end local v0    # "description":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->readEntries(Ljava/io/ObjectInput;)V

    .line 164
    return-void
.end method

.method public readFromSortedMap(Ljava/util/SortedMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "areaCodeMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 93
    .local v0, "descriptionsSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v6

    iput v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numOfEntries:I

    .line 94
    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->getOptimalNumberOfBytesForValue(I)I

    move-result v6

    iput v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    .line 95
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->getOptimalNumberOfBytesForValue(I)I

    move-result v6

    iput v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descIndexSizeInBytes:I

    .line 99
    iget v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numOfEntries:I

    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    iget v8, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descIndexSizeInBytes:I

    add-int/2addr v7, v8

    mul-int/2addr v6, v7

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numberDescriptionIndexes:Ljava/nio/ByteBuffer;

    .line 105
    const/4 v3, 0x0

    .line 106
    .local v3, "index":I
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 108
    .local v5, "prefix":I
    iget v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descIndexSizeInBytes:I

    add-int/2addr v6, v7

    mul-int v4, v3, v6

    .line 109
    .local v4, "offset":I
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numberDescriptionIndexes:Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    invoke-static {v6, v7, v4, v5}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->storeWordInBufferOffset(Ljava/nio/ByteBuffer;III)V

    .line 110
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->possibleLengths:Ljava/util/TreeSet;

    int-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    goto :goto_1

    .line 113
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "offset":I
    .end local v5    # "prefix":I
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->createDescriptionPool(Ljava/util/SortedSet;Ljava/util/SortedMap;)V

    .line 114
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 7
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->prefixSizeInBytes:I

    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 191
    iget v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descIndexSizeInBytes:I

    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 194
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->size()I

    move-result v5

    .line 195
    .local v5, "sizeOfLengths":I
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 196
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 197
    .local v4, "length":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0

    .line 201
    .end local v4    # "length":Ljava/lang/Integer;
    :cond_0
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descriptionPool:[Ljava/lang/String;

    array-length v6, v6

    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 203
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->descriptionPool:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 204
    .local v1, "description":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    .end local v1    # "description":Ljava/lang/String;
    :cond_1
    iget v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numOfEntries:I

    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 209
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorageExt;->numberDescriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->write([B)V

    .line 210
    return-void
.end method
