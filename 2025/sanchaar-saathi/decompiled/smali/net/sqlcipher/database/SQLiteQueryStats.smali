.class public Lnet/sqlcipher/database/SQLiteQueryStats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field largestIndividualRowSize:J

.field totalQueryResultSize:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnet/sqlcipher/database/SQLiteQueryStats;->totalQueryResultSize:J

    iput-wide p3, p0, Lnet/sqlcipher/database/SQLiteQueryStats;->largestIndividualRowSize:J

    return-void
.end method


# virtual methods
.method public getLargestIndividualRowSize()J
    .locals 2

    iget-wide v0, p0, Lnet/sqlcipher/database/SQLiteQueryStats;->largestIndividualRowSize:J

    return-wide v0
.end method

.method public getTotalQueryResultSize()J
    .locals 2

    iget-wide v0, p0, Lnet/sqlcipher/database/SQLiteQueryStats;->totalQueryResultSize:J

    return-wide v0
.end method
