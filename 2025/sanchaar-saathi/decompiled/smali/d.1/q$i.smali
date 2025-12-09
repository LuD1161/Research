.class public final Ld/q$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation


# instance fields
.field public final c:Ld/p;

.field public final synthetic d:Ld/q;


# direct methods
.method public constructor <init>(Ld/q;Ld/p;)V
    .locals 1

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ld/q$i;->d:Ld/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld/q$i;->c:Ld/p;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Ld/q$i;->d:Ld/q;

    invoke-static {v0}, Ld/q;->b(Ld/q;)Li3/h;

    move-result-object v0

    iget-object v1, p0, Ld/q$i;->c:Ld/p;

    invoke-virtual {v0, v1}, Li3/h;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ld/q$i;->d:Ld/q;

    invoke-static {v0}, Ld/q;->a(Ld/q;)Ld/p;

    move-result-object v0

    iget-object v1, p0, Ld/q$i;->c:Ld/p;

    invoke-static {v0, v1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/q$i;->c:Ld/p;

    invoke-virtual {v0}, Ld/p;->c()V

    iget-object v0, p0, Ld/q$i;->d:Ld/q;

    invoke-static {v0, v1}, Ld/q;->f(Ld/q;Ld/p;)V

    :cond_0
    iget-object v0, p0, Ld/q$i;->c:Ld/p;

    invoke-virtual {v0, p0}, Ld/p;->i(Ld/c;)V

    iget-object v0, p0, Ld/q$i;->c:Ld/p;

    invoke-virtual {v0}, Ld/p;->b()Lu3/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lu3/a;->c()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Ld/q$i;->c:Ld/p;

    invoke-virtual {v0, v1}, Ld/p;->k(Lu3/a;)V

    return-void
.end method
