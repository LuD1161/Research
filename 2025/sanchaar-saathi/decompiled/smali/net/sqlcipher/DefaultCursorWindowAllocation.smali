.class public Lnet/sqlcipher/DefaultCursorWindowAllocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sqlcipher/CursorWindowAllocation;


# instance fields
.field private WindowAllocationUnbounded:J

.field private initialAllocationSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/sqlcipher/DefaultCursorWindowAllocation;->initialAllocationSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/sqlcipher/DefaultCursorWindowAllocation;->WindowAllocationUnbounded:J

    return-void
.end method


# virtual methods
.method public getGrowthPaddingSize()J
    .locals 2

    iget-wide v0, p0, Lnet/sqlcipher/DefaultCursorWindowAllocation;->initialAllocationSize:J

    return-wide v0
.end method

.method public getInitialAllocationSize()J
    .locals 2

    iget-wide v0, p0, Lnet/sqlcipher/DefaultCursorWindowAllocation;->initialAllocationSize:J

    return-wide v0
.end method

.method public getMaxAllocationSize()J
    .locals 2

    iget-wide v0, p0, Lnet/sqlcipher/DefaultCursorWindowAllocation;->WindowAllocationUnbounded:J

    return-wide v0
.end method
