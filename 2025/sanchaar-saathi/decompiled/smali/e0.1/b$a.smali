.class public final Le0/b$a;
.super Ln3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le0/b;->j(Le0/b;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Le0/b;

.field public l:I


# direct methods
.method public constructor <init>(Le0/b;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Le0/b$a;->k:Le0/b;

    invoke-direct {p0, p2}, Ln3/d;-><init>(Ll3/e;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le0/b$a;->j:Ljava/lang/Object;

    iget p1, p0, Le0/b$a;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le0/b$a;->l:I

    iget-object p1, p0, Le0/b$a;->k:Le0/b;

    invoke-static {p1, p0}, Le0/b;->j(Le0/b;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
