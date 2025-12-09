.class public final Le0/e$b;
.super Ln3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le0/e;->c(Lu3/p;Ll3/e;)Ljava/lang/Object;
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

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Le0/e;

.field public n:I


# direct methods
.method public constructor <init>(Le0/e;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Le0/e$b;->m:Le0/e;

    invoke-direct {p0, p2}, Ln3/d;-><init>(Ll3/e;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le0/e$b;->l:Ljava/lang/Object;

    iget p1, p0, Le0/e$b;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le0/e$b;->n:I

    iget-object p1, p0, Le0/e$b;->m:Le0/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le0/e;->c(Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
