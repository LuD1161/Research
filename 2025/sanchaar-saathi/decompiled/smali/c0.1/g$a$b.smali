.class public final Lc0/g$a$b;
.super Ln3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/g$a;->c(Ljava/util/List;Lc0/m;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lc0/g$a;

.field public l:I


# direct methods
.method public constructor <init>(Lc0/g$a;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/g$a$b;->k:Lc0/g$a;

    invoke-direct {p0, p2}, Ln3/d;-><init>(Ll3/e;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc0/g$a$b;->j:Ljava/lang/Object;

    iget p1, p0, Lc0/g$a$b;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc0/g$a$b;->l:I

    iget-object p1, p0, Lc0/g$a$b;->k:Lc0/g$a;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lc0/g$a;->a(Lc0/g$a;Ljava/util/List;Lc0/m;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
