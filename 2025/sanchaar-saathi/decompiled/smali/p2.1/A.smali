.class public final Lp2/A;
.super Lp2/d$a;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp2/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lp2/d;
    .locals 4

    iget-byte v0, p0, Lp2/A;->c:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lp2/A;->c:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-string v1, " appUpdateType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-byte v1, p0, Lp2/A;->c:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const-string v1, " allowAssetPackDeletion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Lp2/C;

    iget v1, p0, Lp2/A;->a:I

    iget-boolean v2, p0, Lp2/A;->b:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lp2/C;-><init>(IZLp2/B;)V

    return-object v0
.end method

.method public final b(Z)Lp2/d$a;
    .locals 0

    iput-boolean p1, p0, Lp2/A;->b:Z

    iget-byte p1, p0, Lp2/A;->c:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lp2/A;->c:B

    return-object p0
.end method

.method public final c(I)Lp2/d$a;
    .locals 0

    iput p1, p0, Lp2/A;->a:I

    iget-byte p1, p0, Lp2/A;->c:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lp2/A;->c:B

    return-object p0
.end method
