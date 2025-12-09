.class public final Landroidx/work/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/Executor;

.field public b:LQ0/v;

.field public c:LQ0/h;

.field public d:Ljava/util/concurrent/Executor;

.field public e:LQ0/q;

.field public f:LR/a;

.field public g:LR/a;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Landroidx/work/a$b;->i:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/work/a$b;->j:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/work/a$b;->k:I

    const/16 v0, 0x14

    iput v0, p0, Landroidx/work/a$b;->l:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/a;
    .locals 1

    new-instance v0, Landroidx/work/a;

    invoke-direct {v0, p0}, Landroidx/work/a;-><init>(Landroidx/work/a$b;)V

    return-object v0
.end method
