.class public abstract Li0/A;
.super Li0/w;
.source "SourceFile"


# instance fields
.field public final c:Landroid/app/Activity;

.field public final d:Landroid/content/Context;

.field public final e:Landroid/os/Handler;

.field public final f:I

.field public final g:Li0/I;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Li0/w;-><init>()V

    .line 2
    iput-object p1, p0, Li0/A;->c:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Li0/A;->d:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Li0/A;->e:Landroid/os/Handler;

    .line 5
    iput p4, p0, Li0/A;->f:I

    .line 6
    new-instance p1, Li0/J;

    invoke-direct {p1}, Li0/J;-><init>()V

    iput-object p1, p0, Li0/A;->g:Li0/I;

    return-void
.end method

.method public constructor <init>(Li0/u;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, p1, p1, v0, v1}, Li0/A;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public A(Li0/p;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Li0/A;->d:Landroid/content/Context;

    invoke-static {p1, p2, p4}, LH/a;->l(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract B()V
.end method

.method public final n()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Li0/A;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public final o()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Li0/A;->d:Landroid/content/Context;

    return-object v0
.end method

.method public final q()Li0/I;
    .locals 1

    iget-object v0, p0, Li0/A;->g:Li0/I;

    return-object v0
.end method

.method public final v()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Li0/A;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract x(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract y()Ljava/lang/Object;
.end method

.method public abstract z()Landroid/view/LayoutInflater;
.end method
