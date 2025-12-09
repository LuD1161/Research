.class public Li0/p$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Boolean;

.field public q:Ljava/lang/Boolean;

.field public r:F

.field public s:Landroid/view/View;

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Li0/p$g;->j:Ljava/lang/Object;

    sget-object v1, Li0/p;->f0:Ljava/lang/Object;

    iput-object v1, p0, Li0/p$g;->k:Ljava/lang/Object;

    iput-object v0, p0, Li0/p$g;->l:Ljava/lang/Object;

    iput-object v1, p0, Li0/p$g;->m:Ljava/lang/Object;

    iput-object v0, p0, Li0/p$g;->n:Ljava/lang/Object;

    iput-object v1, p0, Li0/p$g;->o:Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Li0/p$g;->r:F

    iput-object v0, p0, Li0/p$g;->s:Landroid/view/View;

    return-void
.end method
