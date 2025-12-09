.class public LR0/K$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR0/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/work/c;

.field public c:LY0/a;

.field public d:Lc1/b;

.field public e:Landroidx/work/a;

.field public f:Landroidx/work/impl/WorkDatabase;

.field public g:LZ0/u;

.field public h:Ljava/util/List;

.field public final i:Ljava/util/List;

.field public j:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;LY0/a;Landroidx/work/impl/WorkDatabase;LZ0/u;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/work/WorkerParameters$a;

    invoke-direct {v0}, Landroidx/work/WorkerParameters$a;-><init>()V

    iput-object v0, p0, LR0/K$c;->j:Landroidx/work/WorkerParameters$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LR0/K$c;->a:Landroid/content/Context;

    iput-object p3, p0, LR0/K$c;->d:Lc1/b;

    iput-object p4, p0, LR0/K$c;->c:LY0/a;

    iput-object p2, p0, LR0/K$c;->e:Landroidx/work/a;

    iput-object p5, p0, LR0/K$c;->f:Landroidx/work/impl/WorkDatabase;

    iput-object p6, p0, LR0/K$c;->g:LZ0/u;

    iput-object p7, p0, LR0/K$c;->i:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(LR0/K$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LR0/K$c;->i:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public b()LR0/K;
    .locals 1

    new-instance v0, LR0/K;

    invoke-direct {v0, p0}, LR0/K;-><init>(LR0/K$c;)V

    return-object v0
.end method

.method public c(Landroidx/work/WorkerParameters$a;)LR0/K$c;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, LR0/K$c;->j:Landroidx/work/WorkerParameters$a;

    :cond_0
    return-object p0
.end method

.method public d(Ljava/util/List;)LR0/K$c;
    .locals 0

    iput-object p1, p0, LR0/K$c;->h:Ljava/util/List;

    return-object p0
.end method
