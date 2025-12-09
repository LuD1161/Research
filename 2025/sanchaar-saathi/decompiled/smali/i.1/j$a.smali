.class public Li/j$a;
.super LS/M;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li/j;


# direct methods
.method public constructor <init>(Li/j;)V
    .locals 0

    iput-object p1, p0, Li/j$a;->a:Li/j;

    invoke-direct {p0}, LS/M;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li/j$a;->a:Li/j;

    iget-boolean v0, p1, Li/j;->s:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Li/j;->h:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Li/j$a;->a:Li/j;

    iget-object p1, p1, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Li/j$a;->a:Li/j;

    iget-object p1, p1, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Li/j$a;->a:Li/j;

    iget-object p1, p1, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Li/j$a;->a:Li/j;

    const/4 v0, 0x0

    iput-object v0, p1, Li/j;->x:Ln/h;

    invoke-virtual {p1}, Li/j;->x()V

    iget-object p1, p0, Li/j$a;->a:Li/j;

    iget-object p1, p1, Li/j;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_1

    invoke-static {p1}, LS/C;->d0(Landroid/view/View;)V

    :cond_1
    return-void
.end method
