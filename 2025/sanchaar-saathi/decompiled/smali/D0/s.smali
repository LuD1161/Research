.class public LD0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv/a;

.field public final b:Landroid/util/SparseArray;

.field public final c:Lv/d;

.field public final d:Lv/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv/a;

    invoke-direct {v0}, Lv/a;-><init>()V

    iput-object v0, p0, LD0/s;->a:Lv/a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LD0/s;->b:Landroid/util/SparseArray;

    new-instance v0, Lv/d;

    invoke-direct {v0}, Lv/d;-><init>()V

    iput-object v0, p0, LD0/s;->c:Lv/d;

    new-instance v0, Lv/a;

    invoke-direct {v0}, Lv/a;-><init>()V

    iput-object v0, p0, LD0/s;->d:Lv/a;

    return-void
.end method
