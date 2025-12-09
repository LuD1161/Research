.class public abstract Li0/u;
.super Ld/h;
.source "SourceFile"

# interfaces
.implements LG/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/u$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public final w:Li0/y;

.field public final x:Landroidx/lifecycle/l;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/h;-><init>()V

    new-instance v0, Li0/u$a;

    invoke-direct {v0, p0}, Li0/u$a;-><init>(Li0/u;)V

    invoke-static {v0}, Li0/y;->b(Li0/A;)Li0/y;

    move-result-object v0

    iput-object v0, p0, Li0/u;->w:Li0/y;

    new-instance v0, Landroidx/lifecycle/l;

    invoke-direct {v0, p0}, Landroidx/lifecycle/l;-><init>(Landroidx/lifecycle/k;)V

    iput-object v0, p0, Li0/u;->x:Landroidx/lifecycle/l;

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/u;->A:Z

    invoke-virtual {p0}, Li0/u;->U()V

    return-void
.end method

.method public static synthetic O(Li0/u;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Li0/u;->Y(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic P(Li0/u;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Li0/u;->W(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic Q(Li0/u;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Li0/u;->V()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Li0/u;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Li0/u;->X(Landroid/content/Intent;)V

    return-void
.end method

.method public static a0(Li0/I;Landroidx/lifecycle/g$b;)Z
    .locals 5

    invoke-virtual {p0}, Li0/I;->u0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/p;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Li0/p;->C()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Li0/p;->s()Li0/I;

    move-result-object v2

    invoke-static {v2, p1}, Li0/u;->a0(Li0/I;Landroidx/lifecycle/g$b;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_2
    iget-object v2, v1, Li0/p;->X:Li0/V;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Li0/V;->b()Landroidx/lifecycle/g;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/g;->b()Landroidx/lifecycle/g$b;

    move-result-object v2

    sget-object v4, Landroidx/lifecycle/g$b;->h:Landroidx/lifecycle/g$b;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/g$b;->f(Landroidx/lifecycle/g$b;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v1, Li0/p;->X:Li0/V;

    invoke-virtual {v0, p1}, Li0/V;->g(Landroidx/lifecycle/g$b;)V

    move v0, v3

    :cond_3
    iget-object v2, v1, Li0/p;->W:Landroidx/lifecycle/l;

    invoke-virtual {v2}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/g$b;

    move-result-object v2

    sget-object v4, Landroidx/lifecycle/g$b;->h:Landroidx/lifecycle/g$b;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/g$b;->f(Landroidx/lifecycle/g$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Li0/p;->W:Landroidx/lifecycle/l;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/l;->m(Landroidx/lifecycle/g$b;)V

    move v0, v3

    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
.method public final S(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0, p1, p2, p3, p4}, Li0/y;->n(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public T()Li0/I;
    .locals 1

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->l()Li0/I;

    move-result-object v0

    return-object v0
.end method

.method public final U()V
    .locals 3

    invoke-virtual {p0}, Ld/h;->l()Lx0/d;

    move-result-object v0

    new-instance v1, Li0/q;

    invoke-direct {v1, p0}, Li0/q;-><init>(Li0/u;)V

    const-string v2, "android:support:lifecycle"

    invoke-virtual {v0, v2, v1}, Lx0/d;->h(Ljava/lang/String;Lx0/d$c;)V

    new-instance v0, Li0/r;

    invoke-direct {v0, p0}, Li0/r;-><init>(Li0/u;)V

    invoke-virtual {p0, v0}, Ld/h;->h(LR/a;)V

    new-instance v0, Li0/s;

    invoke-direct {v0, p0}, Li0/s;-><init>(Li0/u;)V

    invoke-virtual {p0, v0}, Ld/h;->F(LR/a;)V

    new-instance v0, Li0/t;

    invoke-direct {v0, p0}, Li0/t;-><init>(Li0/u;)V

    invoke-virtual {p0, v0}, Ld/h;->E(Le/b;)V

    return-void
.end method

.method public final synthetic V()Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p0}, Li0/u;->Z()V

    iget-object v0, p0, Li0/u;->x:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final synthetic W(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Li0/u;->w:Li0/y;

    invoke-virtual {p1}, Li0/y;->m()V

    return-void
.end method

.method public final synthetic X(Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Li0/u;->w:Li0/y;

    invoke-virtual {p1}, Li0/y;->m()V

    return-void
.end method

.method public final synthetic Y(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Li0/u;->w:Li0/y;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Li0/y;->a(Li0/p;)V

    return-void
.end method

.method public Z()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Li0/u;->T()Li0/I;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/g$b;->g:Landroidx/lifecycle/g$b;

    invoke-static {v0, v1}, Li0/u;->a0(Li0/I;Landroidx/lifecycle/g$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public b0(Li0/p;)V
    .locals 0

    return-void
.end method

.method public c0()V
    .locals 2

    iget-object v0, p0, Li0/u;->x:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_RESUME:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->h()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LG/e;->x([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Li0/u;->y:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Li0/u;->z:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Li0/u;->A:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lo0/a;->b(Landroidx/lifecycle/k;)Lo0/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lo0/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->l()Li0/I;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Li0/I;->W(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->m()V

    invoke-super {p0, p1, p2, p3}, Ld/h;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Ld/h;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Li0/u;->x:Landroidx/lifecycle/l;

    sget-object v0, Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    iget-object p1, p0, Li0/u;->w:Li0/y;

    invoke-virtual {p1}, Li0/y;->e()V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Li0/u;->S(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Li0/u;->S(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->f()V

    iget-object v0, p0, Li0/u;->x:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Ld/h;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Li0/u;->w:Li0/y;

    invoke-virtual {p1, p2}, Li0/y;->d(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/u;->z:Z

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->g()V

    iget-object v0, p0, Li0/u;->x:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_PAUSE:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Li0/u;->c0()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->m()V

    invoke-super {p0, p1, p2, p3}, Ld/h;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->m()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/u;->z:Z

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->k()Z

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->m()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/u;->A:Z

    iget-boolean v0, p0, Li0/u;->y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/u;->y:Z

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->c()V

    :cond_0
    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->k()Z

    iget-object v0, p0, Li0/u;->x:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_START:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->i()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->m()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/u;->A:Z

    invoke-virtual {p0}, Li0/u;->Z()V

    iget-object v0, p0, Li0/u;->w:Li0/y;

    invoke-virtual {v0}, Li0/y;->j()V

    iget-object v0, p0, Li0/u;->x:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    return-void
.end method
