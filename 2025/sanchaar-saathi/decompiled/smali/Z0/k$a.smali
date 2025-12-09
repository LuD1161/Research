.class public LZ0/k$a;
.super Lu0/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ0/k;-><init>(Lu0/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:LZ0/k;


# direct methods
.method public constructor <init>(LZ0/k;Lu0/u;)V
    .locals 0

    iput-object p1, p0, LZ0/k$a;->d:LZ0/k;

    invoke-direct {p0, p2}, Lu0/i;-><init>(Lu0/u;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    return-object v0
.end method

.method public bridge synthetic i(Ly0/k;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, LZ0/i;

    invoke-virtual {p0, p1, p2}, LZ0/k$a;->k(Ly0/k;LZ0/i;)V

    return-void
.end method

.method public k(Ly0/k;LZ0/i;)V
    .locals 3

    iget-object v0, p2, LZ0/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ly0/i;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, Ly0/i;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, LZ0/i;->a()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Ly0/i;->bindLong(IJ)V

    iget p2, p2, LZ0/i;->c:I

    int-to-long v0, p2

    const/4 p2, 0x3

    invoke-interface {p1, p2, v0, v1}, Ly0/i;->bindLong(IJ)V

    return-void
.end method
