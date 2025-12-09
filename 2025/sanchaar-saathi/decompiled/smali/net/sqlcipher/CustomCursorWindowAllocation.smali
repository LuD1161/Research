.class public Lnet/sqlcipher/CustomCursorWindowAllocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sqlcipher/CursorWindowAllocation;


# instance fields
.field private growthPaddingSize:J

.field private initialAllocationSize:J

.field private maxAllocationSize:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnet/sqlcipher/CustomCursorWindowAllocation;->initialAllocationSize:J

    iput-wide p3, p0, Lnet/sqlcipher/CustomCursorWindowAllocation;->growthPaddingSize:J

    iput-wide p5, p0, Lnet/sqlcipher/CustomCursorWindowAllocation;->maxAllocationSize:J

    return-void
.end method


# virtual methods
.method public getGrowthPaddingSize()J
    .locals 2

    iget-wide v0, p0, Lnet/sqlcipher/CustomCursorWindowAllocation;->growthPaddingSize:J

    return-wide v0
.end method

.method public getInitialAllocationSize()J
    .locals 2

    iget-wide v0, p0, Lnet/sqlcipher/CustomCursorWindowAllocation;->initialAllocationSize:J

    return-wide v0
.end method

.method public getMaxAllocationSize()J
    .locals 2

    iget-wide v0, p0, Lnet/sqlcipher/CustomCursorWindowAllocation;->maxAllocationSize:J

    return-wide v0
.end method
