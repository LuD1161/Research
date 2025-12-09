.class public Lp/v$a;
.super Lp/N;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic l:Lp/v$e;

.field public final synthetic m:Lp/v;


# direct methods
.method public constructor <init>(Lp/v;Landroid/view/View;Lp/v$e;)V
    .locals 0

    iput-object p1, p0, Lp/v$a;->m:Lp/v;

    iput-object p3, p0, Lp/v$a;->l:Lp/v$e;

    invoke-direct {p0, p2}, Lp/N;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Lo/f;
    .locals 1

    iget-object v0, p0, Lp/v$a;->l:Lp/v$e;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lp/v$a;->m:Lp/v;

    invoke-virtual {v0}, Lp/v;->getInternalPopup()Lp/v$g;

    move-result-object v0

    invoke-interface {v0}, Lp/v$g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp/v$a;->m:Lp/v;

    invoke-virtual {v0}, Lp/v;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
