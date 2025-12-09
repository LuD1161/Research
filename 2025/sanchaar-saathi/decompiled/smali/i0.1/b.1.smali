.class public final Li0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Li0/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:[I

.field public final f:Ljava/util/ArrayList;

.field public final g:[I

.field public final h:[I

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:I

.field public final m:Ljava/lang/CharSequence;

.field public final n:I

.field public final o:Ljava/lang/CharSequence;

.field public final p:Ljava/util/ArrayList;

.field public final q:Ljava/util/ArrayList;

.field public final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li0/b$a;

    invoke-direct {v0}, Li0/b$a;-><init>()V

    sput-object v0, Li0/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Li0/b;->e:[I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Li0/b;->f:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Li0/b;->g:[I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Li0/b;->h:[I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Li0/b;->i:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li0/b;->j:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Li0/b;->k:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Li0/b;->l:I

    .line 38
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Li0/b;->m:Ljava/lang/CharSequence;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Li0/b;->n:I

    .line 40
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Li0/b;->o:Ljava/lang/CharSequence;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Li0/b;->p:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Li0/b;->q:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Li0/b;->r:Z

    return-void
.end method

.method public constructor <init>(Li0/a;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    .line 3
    new-array v1, v1, [I

    iput-object v1, p0, Li0/b;->e:[I

    .line 4
    iget-boolean v1, p1, Li0/Q;->i:Z

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Li0/b;->f:Ljava/util/ArrayList;

    .line 6
    new-array v1, v0, [I

    iput-object v1, p0, Li0/b;->g:[I

    .line 7
    new-array v1, v0, [I

    iput-object v1, p0, Li0/b;->h:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    iget-object v3, p1, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/Q$a;

    .line 9
    iget-object v4, p0, Li0/b;->e:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Li0/Q$a;->a:I

    aput v6, v4, v2

    .line 10
    iget-object v4, p0, Li0/b;->f:Ljava/util/ArrayList;

    iget-object v6, v3, Li0/Q$a;->b:Li0/p;

    if-eqz v6, :cond_0

    iget-object v6, v6, Li0/p;->h:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v4, p0, Li0/b;->e:[I

    add-int/lit8 v6, v2, 0x2

    iget-boolean v7, v3, Li0/Q$a;->c:Z

    aput v7, v4, v5

    add-int/lit8 v5, v2, 0x3

    .line 12
    iget v7, v3, Li0/Q$a;->d:I

    aput v7, v4, v6

    add-int/lit8 v6, v2, 0x4

    .line 13
    iget v7, v3, Li0/Q$a;->e:I

    aput v7, v4, v5

    add-int/lit8 v5, v2, 0x5

    .line 14
    iget v7, v3, Li0/Q$a;->f:I

    aput v7, v4, v6

    add-int/lit8 v2, v2, 0x6

    .line 15
    iget v6, v3, Li0/Q$a;->g:I

    aput v6, v4, v5

    .line 16
    iget-object v4, p0, Li0/b;->g:[I

    iget-object v5, v3, Li0/Q$a;->h:Landroidx/lifecycle/g$b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v5, v4, v1

    .line 17
    iget-object v4, p0, Li0/b;->h:[I

    iget-object v3, v3, Li0/Q$a;->i:Landroidx/lifecycle/g$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget v0, p1, Li0/Q;->h:I

    iput v0, p0, Li0/b;->i:I

    .line 19
    iget-object v0, p1, Li0/Q;->k:Ljava/lang/String;

    iput-object v0, p0, Li0/b;->j:Ljava/lang/String;

    .line 20
    iget v0, p1, Li0/a;->v:I

    iput v0, p0, Li0/b;->k:I

    .line 21
    iget v0, p1, Li0/Q;->l:I

    iput v0, p0, Li0/b;->l:I

    .line 22
    iget-object v0, p1, Li0/Q;->m:Ljava/lang/CharSequence;

    iput-object v0, p0, Li0/b;->m:Ljava/lang/CharSequence;

    .line 23
    iget v0, p1, Li0/Q;->n:I

    iput v0, p0, Li0/b;->n:I

    .line 24
    iget-object v0, p1, Li0/Q;->o:Ljava/lang/CharSequence;

    iput-object v0, p0, Li0/b;->o:Ljava/lang/CharSequence;

    .line 25
    iget-object v0, p1, Li0/Q;->p:Ljava/util/ArrayList;

    iput-object v0, p0, Li0/b;->p:Ljava/util/ArrayList;

    .line 26
    iget-object v0, p1, Li0/Q;->q:Ljava/util/ArrayList;

    iput-object v0, p0, Li0/b;->q:Ljava/util/ArrayList;

    .line 27
    iget-boolean p1, p1, Li0/Q;->r:Z

    iput-boolean p1, p0, Li0/b;->r:Z

    return-void

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Li0/a;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Li0/b;->e:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    new-instance v3, Li0/Q$a;

    invoke-direct {v3}, Li0/Q$a;-><init>()V

    iget-object v5, p0, Li0/b;->e:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v1

    iput v5, v3, Li0/Q$a;->a:I

    const/4 v5, 0x2

    invoke-static {v5}, Li0/I;->I0(I)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Instantiate "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " op #"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " base fragment #"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Li0/b;->e:[I

    aget v7, v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "FragmentManager"

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroidx/lifecycle/g$b;->values()[Landroidx/lifecycle/g$b;

    move-result-object v5

    iget-object v7, p0, Li0/b;->g:[I

    aget v7, v7, v2

    aget-object v5, v5, v7

    iput-object v5, v3, Li0/Q$a;->h:Landroidx/lifecycle/g$b;

    invoke-static {}, Landroidx/lifecycle/g$b;->values()[Landroidx/lifecycle/g$b;

    move-result-object v5

    iget-object v7, p0, Li0/b;->h:[I

    aget v7, v7, v2

    aget-object v5, v5, v7

    iput-object v5, v3, Li0/Q$a;->i:Landroidx/lifecycle/g$b;

    iget-object v5, p0, Li0/b;->e:[I

    add-int/lit8 v7, v1, 0x2

    aget v6, v5, v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    iput-boolean v4, v3, Li0/Q$a;->c:Z

    add-int/lit8 v4, v1, 0x3

    aget v6, v5, v7

    iput v6, v3, Li0/Q$a;->d:I

    add-int/lit8 v7, v1, 0x4

    aget v4, v5, v4

    iput v4, v3, Li0/Q$a;->e:I

    add-int/lit8 v8, v1, 0x5

    aget v7, v5, v7

    iput v7, v3, Li0/Q$a;->f:I

    add-int/lit8 v1, v1, 0x6

    aget v5, v5, v8

    iput v5, v3, Li0/Q$a;->g:I

    iput v6, p1, Li0/Q;->d:I

    iput v4, p1, Li0/Q;->e:I

    iput v7, p1, Li0/Q;->f:I

    iput v5, p1, Li0/Q;->g:I

    invoke-virtual {p1, v3}, Li0/Q;->e(Li0/Q$a;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Li0/b;->i:I

    iput v0, p1, Li0/Q;->h:I

    iget-object v0, p0, Li0/b;->j:Ljava/lang/String;

    iput-object v0, p1, Li0/Q;->k:Ljava/lang/String;

    iput-boolean v4, p1, Li0/Q;->i:Z

    iget v0, p0, Li0/b;->l:I

    iput v0, p1, Li0/Q;->l:I

    iget-object v0, p0, Li0/b;->m:Ljava/lang/CharSequence;

    iput-object v0, p1, Li0/Q;->m:Ljava/lang/CharSequence;

    iget v0, p0, Li0/b;->n:I

    iput v0, p1, Li0/Q;->n:I

    iget-object v0, p0, Li0/b;->o:Ljava/lang/CharSequence;

    iput-object v0, p1, Li0/Q;->o:Ljava/lang/CharSequence;

    iget-object v0, p0, Li0/b;->p:Ljava/util/ArrayList;

    iput-object v0, p1, Li0/Q;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Li0/b;->q:Ljava/util/ArrayList;

    iput-object v0, p1, Li0/Q;->q:Ljava/util/ArrayList;

    iget-boolean v0, p0, Li0/b;->r:Z

    iput-boolean v0, p1, Li0/Q;->r:Z

    return-void
.end method

.method public c(Li0/I;)Li0/a;
    .locals 4

    new-instance v0, Li0/a;

    invoke-direct {v0, p1}, Li0/a;-><init>(Li0/I;)V

    invoke-virtual {p0, v0}, Li0/b;->a(Li0/a;)V

    iget v1, p0, Li0/b;->k:I

    iput v1, v0, Li0/a;->v:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Li0/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Li0/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, v0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/Q$a;

    invoke-virtual {p1, v2}, Li0/I;->f0(Ljava/lang/String;)Li0/p;

    move-result-object v2

    iput-object v2, v3, Li0/Q$a;->b:Li0/p;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Li0/a;->p(I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Li0/b;->e:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Li0/b;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Li0/b;->g:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Li0/b;->h:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Li0/b;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Li0/b;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Li0/b;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Li0/b;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Li0/b;->m:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Li0/b;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Li0/b;->o:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Li0/b;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Li0/b;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Li0/b;->r:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
