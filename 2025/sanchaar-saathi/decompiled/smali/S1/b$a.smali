.class public LS1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:LS1/c$b;

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;LS1/c$b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS1/b$a;->a:Landroid/util/SparseArray;

    iput-object p2, p0, LS1/b$a;->b:LS1/c$b;

    iput-boolean p3, p0, LS1/b$a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, LS1/b$a;->a:Landroid/util/SparseArray;

    return-object v0
.end method
