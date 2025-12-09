.class public LZ0/f$a;
.super Lu0/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ0/f;-><init>(Lu0/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:LZ0/f;


# direct methods
.method public constructor <init>(LZ0/f;Lu0/u;)V
    .locals 0

    iput-object p1, p0, LZ0/f$a;->d:LZ0/f;

    invoke-direct {p0, p2}, Lu0/i;-><init>(Lu0/u;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic i(Ly0/k;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, LZ0/d;

    invoke-virtual {p0, p1, p2}, LZ0/f$a;->k(Ly0/k;LZ0/d;)V

    return-void
.end method

.method public k(Ly0/k;LZ0/d;)V
    .locals 4

    invoke-virtual {p2}, LZ0/d;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ly0/i;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, LZ0/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ly0/i;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, LZ0/d;->b()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Ly0/i;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, LZ0/d;->b()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ly0/i;->bindLong(IJ)V

    :goto_1
    return-void
.end method
