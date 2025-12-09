.class public LN2/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN2/h;->j(LN2/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LN2/u;

.field public final synthetic d:LN2/h;


# direct methods
.method public constructor <init>(LN2/h;LN2/u;)V
    .locals 0

    iput-object p1, p0, LN2/h$b;->d:LN2/h;

    iput-object p2, p0, LN2/h$b;->c:LN2/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, LN2/h$b;->d:LN2/h;

    invoke-static {v0}, LN2/h;->b(LN2/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN2/h$b;->d:LN2/h;

    iget-object v0, v0, LN2/h;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, LN2/h$b;->c:LN2/u;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, LN2/h$b;->d:LN2/h;

    const/4 v1, 0x0

    iput-object v1, v0, LN2/h;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    iget-object v0, p0, LN2/h$b;->d:LN2/h;

    invoke-static {v0}, LN2/h;->b(LN2/h;)Z

    move-result v0

    return v0
.end method
