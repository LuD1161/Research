.class public abstract Lu0/i;
.super Lu0/A;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lu0/u;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lu0/A;-><init>(Lu0/u;)V

    return-void
.end method


# virtual methods
.method public abstract i(Ly0/k;Ljava/lang/Object;)V
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lu0/A;->b()Ly0/k;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lu0/i;->i(Ly0/k;Ljava/lang/Object;)V

    invoke-interface {v0}, Ly0/k;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lu0/A;->h(Ly0/k;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lu0/A;->h(Ly0/k;)V

    throw p1
.end method
