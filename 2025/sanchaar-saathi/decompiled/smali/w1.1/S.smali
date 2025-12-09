.class public final Lw1/S;
.super Lw1/O;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lw1/i;LR1/g;)V
    .locals 0

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lw1/O;-><init>(ILR1/g;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lw1/o;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lw1/w;)[Lu1/c;
    .locals 1

    invoke-virtual {p1}, Lw1/w;->u()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final g(Lw1/w;)Z
    .locals 1

    invoke-virtual {p1}, Lw1/w;->u()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final h(Lw1/w;)V
    .locals 1

    invoke-virtual {p1}, Lw1/w;->u()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lw1/O;->b:LR1/g;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, LR1/g;->d(Ljava/lang/Object;)Z

    return-void
.end method
