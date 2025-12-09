.class public abstract Ld/h;
.super LG/e;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/k;
.implements Landroidx/lifecycle/I;
.implements Landroidx/lifecycle/f;
.implements Lx0/f;
.implements Ld/s;
.implements Lf/e;
.implements LH/c;
.implements LH/d;
.implements LG/n;
.implements LG/o;
.implements LS/l;
.implements Ld/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/h$j;,
        Ld/h$i;,
        Ld/h$k;,
        Ld/h$h;,
        Ld/h$g;
    }
.end annotation


# instance fields
.field public final e:Le/a;

.field public final f:LS/m;

.field public final g:Landroidx/lifecycle/l;

.field public final h:Lx0/e;

.field public i:Landroidx/lifecycle/H;

.field public j:Ld/q;

.field public final k:Ld/h$j;

.field public final l:Ld/n;

.field public m:I

.field public final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final o:Lf/d;

.field public final p:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final q:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final r:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final s:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final t:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public u:Z

.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, LG/e;-><init>()V

    new-instance v0, Le/a;

    invoke-direct {v0}, Le/a;-><init>()V

    iput-object v0, p0, Ld/h;->e:Le/a;

    new-instance v0, LS/m;

    new-instance v1, Ld/d;

    invoke-direct {v1, p0}, Ld/d;-><init>(Ld/h;)V

    invoke-direct {v0, v1}, LS/m;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Ld/h;->f:LS/m;

    new-instance v0, Landroidx/lifecycle/l;

    invoke-direct {v0, p0}, Landroidx/lifecycle/l;-><init>(Landroidx/lifecycle/k;)V

    iput-object v0, p0, Ld/h;->g:Landroidx/lifecycle/l;

    invoke-static {p0}, Lx0/e;->a(Lx0/f;)Lx0/e;

    move-result-object v0

    iput-object v0, p0, Ld/h;->h:Lx0/e;

    const/4 v1, 0x0

    iput-object v1, p0, Ld/h;->j:Ld/q;

    invoke-virtual {p0}, Ld/h;->G()Ld/h$j;

    move-result-object v1

    iput-object v1, p0, Ld/h;->k:Ld/h$j;

    new-instance v2, Ld/n;

    new-instance v3, Ld/e;

    invoke-direct {v3, p0}, Ld/e;-><init>(Ld/h;)V

    invoke-direct {v2, v1, v3}, Ld/n;-><init>(Ljava/util/concurrent/Executor;Lu3/a;)V

    iput-object v2, p0, Ld/h;->l:Ld/n;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Ld/h;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ld/h$a;

    invoke-direct {v1, p0}, Ld/h$a;-><init>(Ld/h;)V

    iput-object v1, p0, Ld/h;->o:Lf/d;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Ld/h;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Ld/h;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Ld/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Ld/h;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Ld/h;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ld/h;->u:Z

    iput-boolean v1, p0, Ld/h;->v:Z

    invoke-virtual {p0}, Ld/h;->b()Landroidx/lifecycle/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ld/h;->b()Landroidx/lifecycle/g;

    move-result-object v1

    new-instance v2, Ld/h$b;

    invoke-direct {v2, p0}, Ld/h$b;-><init>(Ld/h;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/j;)V

    invoke-virtual {p0}, Ld/h;->b()Landroidx/lifecycle/g;

    move-result-object v1

    new-instance v2, Ld/h$c;

    invoke-direct {v2, p0}, Ld/h$c;-><init>(Ld/h;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/j;)V

    invoke-virtual {p0}, Ld/h;->b()Landroidx/lifecycle/g;

    move-result-object v1

    new-instance v2, Ld/h$d;

    invoke-direct {v2, p0}, Ld/h$d;-><init>(Ld/h;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/j;)V

    invoke-virtual {v0}, Lx0/e;->c()V

    invoke-static {p0}, Landroidx/lifecycle/A;->a(Lx0/f;)V

    invoke-virtual {p0}, Ld/h;->l()Lx0/d;

    move-result-object v0

    new-instance v1, Ld/f;

    invoke-direct {v1, p0}, Ld/f;-><init>(Ld/h;)V

    const-string v2, "android:support:activity-result"

    invoke-virtual {v0, v2, v1}, Lx0/d;->h(Ljava/lang/String;Lx0/d$c;)V

    new-instance v0, Ld/g;

    invoke-direct {v0, p0}, Ld/g;-><init>(Ld/h;)V

    invoke-virtual {p0, v0}, Ld/h;->E(Le/b;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic A(Ld/h;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Ld/h;->L()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Ld/h;)Lh3/n;
    .locals 0

    invoke-virtual {p0}, Ld/h;->K()Lh3/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Ld/h;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public static synthetic D(Ld/h;)Ld/q;
    .locals 0

    iget-object p0, p0, Ld/h;->j:Ld/q;

    return-object p0
.end method

.method public static synthetic z(Ld/h;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld/h;->M(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final E(Le/b;)V
    .locals 1

    iget-object v0, p0, Ld/h;->e:Le/a;

    invoke-virtual {v0, p1}, Le/a;->a(Le/b;)V

    return-void
.end method

.method public final F(LR/a;)V
    .locals 1

    iget-object v0, p0, Ld/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final G()Ld/h$j;
    .locals 1

    new-instance v0, Ld/h$k;

    invoke-direct {v0, p0}, Ld/h$k;-><init>(Ld/h;)V

    return-object v0
.end method

.method public H()V
    .locals 1

    iget-object v0, p0, Ld/h;->i:Landroidx/lifecycle/H;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/h$i;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ld/h$i;->b:Landroidx/lifecycle/H;

    iput-object v0, p0, Ld/h;->i:Landroidx/lifecycle/H;

    :cond_0
    iget-object v0, p0, Ld/h;->i:Landroidx/lifecycle/H;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/H;

    invoke-direct {v0}, Landroidx/lifecycle/H;-><init>()V

    iput-object v0, p0, Ld/h;->i:Landroidx/lifecycle/H;

    :cond_1
    return-void
.end method

.method public I()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/J;->a(Landroid/view/View;Landroidx/lifecycle/k;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/K;->a(Landroid/view/View;Landroidx/lifecycle/I;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lx0/g;->a(Landroid/view/View;Lx0/f;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Ld/v;->a(Landroid/view/View;Ld/s;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Ld/u;->a(Landroid/view/View;Ld/o;)V

    return-void
.end method

.method public J()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public final synthetic K()Lh3/n;
    .locals 1

    invoke-virtual {p0}, Ld/h;->reportFullyDrawn()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic L()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Ld/h;->o:Lf/d;

    invoke-virtual {v1, v0}, Lf/d;->h(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final synthetic M(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Ld/h;->l()Lx0/d;

    move-result-object p1

    const-string v0, "android:support:activity-result"

    invoke-virtual {p1, v0}, Lx0/d;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ld/h;->o:Lf/d;

    invoke-virtual {v0, p1}, Lf/d;->g(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public N()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Landroidx/lifecycle/g;
    .locals 1

    iget-object v0, p0, Ld/h;->g:Landroidx/lifecycle/l;

    return-object v0
.end method

.method public final c(LR/a;)V
    .locals 1

    iget-object v0, p0, Ld/h;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(LR/a;)V
    .locals 1

    iget-object v0, p0, Ld/h;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(LR/a;)V
    .locals 1

    iget-object v0, p0, Ld/h;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(LR/a;)V
    .locals 1

    iget-object v0, p0, Ld/h;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h(LR/a;)V
    .locals 1

    iget-object v0, p0, Ld/h;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k()Ld/q;
    .locals 2

    iget-object v0, p0, Ld/h;->j:Ld/q;

    if-nez v0, :cond_0

    new-instance v0, Ld/q;

    new-instance v1, Ld/h$e;

    invoke-direct {v1, p0}, Ld/h$e;-><init>(Ld/h;)V

    invoke-direct {v0, v1}, Ld/q;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Ld/h;->j:Ld/q;

    invoke-virtual {p0}, Ld/h;->b()Landroidx/lifecycle/g;

    move-result-object v0

    new-instance v1, Ld/h$f;

    invoke-direct {v1, p0}, Ld/h$f;-><init>(Ld/h;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/j;)V

    :cond_0
    iget-object v0, p0, Ld/h;->j:Ld/q;

    return-object v0
.end method

.method public final l()Lx0/d;
    .locals 1

    iget-object v0, p0, Ld/h;->h:Lx0/e;

    invoke-virtual {v0}, Lx0/e;->b()Lx0/d;

    move-result-object v0

    return-object v0
.end method

.method public final m(LR/a;)V
    .locals 1

    iget-object v0, p0, Ld/h;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public o()Lm0/a;
    .locals 3

    new-instance v0, Lm0/b;

    invoke-direct {v0}, Lm0/b;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/lifecycle/G$a;->e:Lm0/a$b;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Landroidx/lifecycle/A;->a:Lm0/a$b;

    invoke-virtual {v0, v1, p0}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    sget-object v1, Landroidx/lifecycle/A;->b:Lm0/a$b;

    invoke-virtual {v0, v1, p0}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/lifecycle/A;->c:Lm0/a$b;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Ld/h;->o:Lf/d;

    invoke-virtual {v0, p1, p2, p3}, Lf/d;->b(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Ld/h;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR/a;

    invoke-interface {v1, p1}, LR/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Ld/h;->h:Lx0/e;

    invoke-virtual {v0, p1}, Lx0/e;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Ld/h;->e:Le/a;

    invoke-virtual {v0, p0}, Le/a;->c(Landroid/content/Context;)V

    invoke-super {p0, p1}, LG/e;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/lifecycle/x;->e(Landroid/app/Activity;)V

    iget p1, p0, Ld/h;->m:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ld/h;->setContentView(I)V

    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    iget-object p1, p0, Ld/h;->f:LS/m;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, LS/m;->b(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Ld/h;->f:LS/m;

    invoke-virtual {p1, p2}, LS/m;->d(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ld/h;->u:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld/h;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR/a;

    .line 3
    new-instance v2, LG/f;

    invoke-direct {v2, p1}, LG/f;-><init>(Z)V

    invoke-interface {v1, v2}, LR/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ld/h;->u:Z

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-boolean v0, p0, Ld/h;->u:Z

    .line 7
    iget-object v0, p0, Ld/h;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR/a;

    .line 8
    new-instance v2, LG/f;

    invoke-direct {v2, p1, p2}, LG/f;-><init>(ZLandroid/content/res/Configuration;)V

    invoke-interface {v1, v2}, LR/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    iput-boolean v0, p0, Ld/h;->u:Z

    .line 10
    throw p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Ld/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR/a;

    invoke-interface {v1, p1}, LR/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Ld/h;->f:LS/m;

    invoke-virtual {v0, p2}, LS/m;->c(Landroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ld/h;->v:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld/h;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR/a;

    .line 3
    new-instance v2, LG/r;

    invoke-direct {v2, p1}, LG/r;-><init>(Z)V

    invoke-interface {v1, v2}, LR/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ld/h;->v:Z

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-boolean v0, p0, Ld/h;->v:Z

    .line 7
    iget-object v0, p0, Ld/h;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR/a;

    .line 8
    new-instance v2, LG/r;

    invoke-direct {v2, p1, p2}, LG/r;-><init>(ZLandroid/content/res/Configuration;)V

    invoke-interface {v1, v2}, LR/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    iput-boolean v0, p0, Ld/h;->v:Z

    .line 10
    throw p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    iget-object p1, p0, Ld/h;->f:LS/m;

    invoke-virtual {p1, p3}, LS/m;->e(Landroid/view/Menu;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    iget-object v0, p0, Ld/h;->o:Lf/d;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Lf/d;->b(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Ld/h;->N()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ld/h;->i:Landroidx/lifecycle/H;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/h$i;

    if-eqz v2, :cond_0

    iget-object v1, v2, Ld/h$i;->b:Landroidx/lifecycle/H;

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v2, Ld/h$i;

    invoke-direct {v2}, Ld/h$i;-><init>()V

    iput-object v0, v2, Ld/h$i;->a:Ljava/lang/Object;

    iput-object v1, v2, Ld/h$i;->b:Landroidx/lifecycle/H;

    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Ld/h;->b()Landroidx/lifecycle/g;

    move-result-object v0

    instance-of v1, v0, Landroidx/lifecycle/l;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$b;->g:Landroidx/lifecycle/g$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->m(Landroidx/lifecycle/g$b;)V

    :cond_0
    invoke-super {p0, p1}, LG/e;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Ld/h;->h:Lx0/e;

    invoke-virtual {v0, p1}, Lx0/e;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    iget-object v0, p0, Ld/h;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, LR/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p()Lf/d;
    .locals 1

    iget-object v0, p0, Ld/h;->o:Lf/d;

    return-object v0
.end method

.method public r(LS/o;)V
    .locals 1

    iget-object v0, p0, Ld/h;->f:LS/m;

    invoke-virtual {v0, p1}, LS/m;->f(LS/o;)V

    return-void
.end method

.method public reportFullyDrawn()V
    .locals 1

    :try_start_0
    invoke-static {}, LC0/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reportFullyDrawn() for ComponentActivity"

    invoke-static {v0}, LC0/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V

    iget-object v0, p0, Ld/h;->l:Ld/n;

    invoke-virtual {v0}, Ld/n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, LC0/a;->f()V

    return-void

    :goto_1
    invoke-static {}, LC0/a;->f()V

    throw v0
.end method

.method public final s(LR/a;)V
    .locals 1

    iget-object v0, p0, Ld/h;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract setContentView(I)V
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld/h;->I()V

    .line 2
    iget-object v0, p0, Ld/h;->k:Ld/h$j;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/h$j;->l(Landroid/view/View;)V

    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public t()Landroidx/lifecycle/H;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld/h;->H()V

    iget-object v0, p0, Ld/h;->i:Landroidx/lifecycle/H;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u(LS/o;)V
    .locals 1

    iget-object v0, p0, Ld/h;->f:LS/m;

    invoke-virtual {v0, p1}, LS/m;->a(LS/o;)V

    return-void
.end method

.method public final w(LR/a;)V
    .locals 1

    iget-object v0, p0, Ld/h;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
