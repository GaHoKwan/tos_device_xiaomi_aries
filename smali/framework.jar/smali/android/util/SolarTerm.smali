.class public Landroid/util/SolarTerm;
.super Ljava/lang/Object;
.source "SolarTerm.java"


# static fields
.field static START_YEAR:I

.field static arrays:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x7b2

    sput v0, Landroid/util/SolarTerm;->START_YEAR:I

    .line 26
    const/16 v0, 0x3cc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/SolarTerm;->arrays:[I

    return-void

    :array_0
    .array-data 4
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0x96
        0xa6
        0x97
        0x97
        0x78
        0x79
        0x79
        0x69
        0x78
        0x77
        0x96
        0xa4
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb5
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x78
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0x96
        0xa6
        0x97
        0x97
        0x78
        0x79
        0x78
        0x69
        0x78
        0x77
        0x96
        0xa4
        0xa5
        0xb5
        0xa6
        0xa6
        0x88
        0x89
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x79
        0x78
        0x87
        0x96
        0xb4
        0x96
        0xa6
        0x96
        0x97
        0x78
        0x79
        0x78
        0x69
        0x78
        0x77
        0x96
        0xa4
        0xa5
        0xb5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x77
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x79
        0x77
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x78
        0x79
        0x78
        0x69
        0x78
        0x77
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0xa6
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x79
        0x77
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x79
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb4
        0xa5
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x79
        0x77
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x86
        0x97
        0x88
        0x78
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x76
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xb5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x79
        0x78
        0x87
        0x95
        0xb4
        0xa5
        0xb5
        0xa5
        0xa6
        0x87
        0x88
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x79
        0x77
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x87
        0x88
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0xa6
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x79
        0x77
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb4
        0xa5
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x79
        0x77
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x96
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x96
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x96
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x78
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x96
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x96
        0xa5
        0xc3
        0xa5
        0xb5
        0xa5
        0xa6
        0x87
        0x88
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xb5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x88
        0x87
        0x96
        0xa5
        0xc3
        0xa5
        0xb4
        0xa5
        0xa6
        0x87
        0x88
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa5
        0x97
        0x87
        0x87
        0x88
        0x86
        0x96
        0xa4
        0xc3
        0xa5
        0xa5
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x78
        0x78
        0x87
        0x87
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSolarTermStr(III)Ljava/lang/String;
    .locals 11
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0xf

    const/4 v8, 0x1

    .line 109
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 110
    .local v2, "res":Landroid/content/res/Resources;
    const v7, 0x1070013

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "solarArrayStr":[Ljava/lang/String;
    const-string v0, ""

    .line 113
    .local v0, "SolarTermStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 114
    .local v3, "result":I
    sget v7, Landroid/util/SolarTerm;->START_YEAR:I

    sub-int v7, p0, v7

    mul-int/lit8 v7, v7, 0xc

    add-int v1, v7, p1

    .line 115
    .local v1, "index":I
    sget-object v7, Landroid/util/SolarTerm;->arrays:[I

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "s":Ljava/lang/String;
    if-ge p2, v9, :cond_1

    .line 117
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    rsub-int/lit8 v6, v7, 0xf

    .line 121
    .local v6, "temp":I
    :goto_0
    if-ne v6, p2, :cond_0

    .line 122
    if-le p2, v9, :cond_2

    .line 123
    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v3, v7, 0x2

    .line 128
    :cond_0
    :goto_1
    aget-object v0, v5, v3

    .line 129
    return-object v0

    .line 119
    .end local v6    # "temp":I
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v6, v7, 0xf

    .restart local v6    # "temp":I
    goto :goto_0

    .line 125
    :cond_2
    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v3, v7, 0x1

    goto :goto_1
.end method