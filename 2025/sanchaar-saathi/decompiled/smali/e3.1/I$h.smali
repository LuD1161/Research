.class public final Le3/I$h;
.super Ln3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/I;->u(Ljava/util/List;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Le3/I;

.field public o:I


# direct methods
.method public constructor <init>(Le3/I;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Le3/I$h;->n:Le3/I;

    invoke-direct {p0, p2}, Ln3/d;-><init>(Ll3/e;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le3/I$h;->m:Ljava/lang/Object;

    iget p1, p0, Le3/I$h;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le3/I$h;->o:I

    iget-object p1, p0, Le3/I$h;->n:Le3/I;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Le3/I;->s(Le3/I;Ljava/util/List;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
