.class public LZ0/c$a;
.super Lu0/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ0/c;-><init>(Lu0/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:LZ0/c;


# direct methods
.method public constructor <init>(LZ0/c;Lu0/u;)V
    .locals 0

    iput-object p1, p0, LZ0/c$a;->d:LZ0/c;

    invoke-direct {p0, p2}, Lu0/i;-><init>(Lu0/u;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic i(Ly0/k;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, LZ0/a;

    invoke-virtual {p0, p1, p2}, LZ0/c$a;->k(Ly0/k;LZ0/a;)V

    return-void
.end method

.method public k(Ly0/k;LZ0/a;)V
    .locals 2

    invoke-virtual {p2}, LZ0/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ly0/i;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, LZ0/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ly0/i;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, LZ0/a;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Ly0/i;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, LZ0/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ly0/i;->bindString(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
