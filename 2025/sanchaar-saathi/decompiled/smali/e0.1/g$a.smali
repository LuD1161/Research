.class public final Le0/g$a;
.super Ln3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le0/g;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Le0/g;

.field public m:I


# direct methods
.method public constructor <init>(Le0/g;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Le0/g$a;->l:Le0/g;

    invoke-direct {p0, p2}, Ln3/d;-><init>(Ll3/e;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le0/g$a;->k:Ljava/lang/Object;

    iget p1, p0, Le0/g$a;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le0/g$a;->m:I

    iget-object p1, p0, Le0/g$a;->l:Le0/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le0/g;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
