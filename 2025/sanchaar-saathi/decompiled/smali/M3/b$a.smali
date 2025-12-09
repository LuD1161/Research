.class public final LM3/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD3/l;
.implements LD3/N0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LM3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final e:LD3/m;

.field public final f:Ljava/lang/Object;

.field public final synthetic g:LM3/b;


# direct methods
.method public constructor <init>(LM3/b;LD3/m;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LM3/b$a;->g:LM3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LM3/b$a;->e:LD3/m;

    iput-object p3, p0, LM3/b$a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public I(Lu3/l;)V
    .locals 1

    iget-object v0, p0, LM3/b$a;->e:LD3/m;

    invoke-virtual {v0, p1}, LD3/m;->I(Lu3/l;)V

    return-void
.end method

.method public K(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LM3/b$a;->e:LD3/m;

    invoke-virtual {v0, p1}, LD3/m;->K(Ljava/lang/Object;)V

    return-void
.end method

.method public a()Ll3/i;
    .locals 1

    iget-object v0, p0, LM3/b$a;->e:LD3/m;

    invoke-virtual {v0}, LD3/m;->a()Ll3/i;

    move-result-object v0

    return-object v0
.end method

.method public b(LI3/C;I)V
    .locals 1

    iget-object v0, p0, LM3/b$a;->e:LD3/m;

    invoke-virtual {v0, p1, p2}, LD3/m;->b(LI3/C;I)V

    return-void
.end method

.method public c(Lh3/n;Lu3/l;)V
    .locals 2

    invoke-static {}, LM3/b;->m()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object v0, p0, LM3/b$a;->g:LM3/b;

    iget-object v1, p0, LM3/b$a;->f:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, LM3/b$a;->e:LD3/m;

    new-instance v0, LM3/b$a$a;

    iget-object v1, p0, LM3/b$a;->g:LM3/b;

    invoke-direct {v0, v1, p0}, LM3/b$a$a;-><init>(LM3/b;LM3/b$a;)V

    invoke-virtual {p2, p1, v0}, LD3/m;->v(Ljava/lang/Object;Lu3/l;)V

    return-void
.end method

.method public d(Lh3/n;Ljava/lang/Object;Lu3/l;)Ljava/lang/Object;
    .locals 2

    iget-object p3, p0, LM3/b$a;->g:LM3/b;

    iget-object v0, p0, LM3/b$a;->e:LD3/m;

    new-instance v1, LM3/b$a$b;

    invoke-direct {v1, p3, p0}, LM3/b$a$b;-><init>(LM3/b;LM3/b$a;)V

    invoke-virtual {v0, p1, p2, v1}, LD3/m;->u(Ljava/lang/Object;Ljava/lang/Object;Lu3/l;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, LM3/b;->m()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object p3, p0, LM3/b$a;->g:LM3/b;

    iget-object v0, p0, LM3/b$a;->f:Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public q(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LM3/b$a;->e:LD3/m;

    invoke-virtual {v0, p1}, LD3/m;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;Lu3/l;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lh3/n;

    invoke-virtual {p0, p1, p2, p3}, LM3/b$a;->d(Lh3/n;Ljava/lang/Object;Lu3/l;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Ljava/lang/Object;Lu3/l;)V
    .locals 0

    check-cast p1, Lh3/n;

    invoke-virtual {p0, p1, p2}, LM3/b$a;->c(Lh3/n;Lu3/l;)V

    return-void
.end method
