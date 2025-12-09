.class public abstract LI3/q$a;
.super LI3/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI3/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final b:LI3/q;

.field public c:LI3/q;


# direct methods
.method public constructor <init>(LI3/q;)V
    .locals 0

    invoke-direct {p0}, LI3/b;-><init>()V

    iput-object p1, p0, LI3/q$a;->b:LI3/q;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LI3/q;

    invoke-virtual {p0, p1, p2}, LI3/q$a;->e(LI3/q;Ljava/lang/Object;)V

    return-void
.end method

.method public e(LI3/q;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, LI3/q$a;->b:LI3/q;

    goto :goto_1

    :cond_1
    iget-object v0, p0, LI3/q$a;->c:LI3/q;

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, LI3/q;->m()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p1, p0, v0}, Lw/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, LI3/q$a;->b:LI3/q;

    iget-object p2, p0, LI3/q$a;->c:LI3/q;

    invoke-static {p2}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-static {p1, p2}, LI3/q;->l(LI3/q;LI3/q;)V

    :cond_2
    return-void
.end method
